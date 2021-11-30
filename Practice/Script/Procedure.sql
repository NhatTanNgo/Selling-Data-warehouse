USE MetaData_DALT
GO

CREATE PROCEDURE GET_CET 
@name NVARCHAR(50)
AS
BEGIN 
DECLARE
	@result NVARCHAR(50),
	@cet DATETIME,
	@lset DATETIME
	

SELECT @cet = GETDATE(),
	   @result = NULL

	SELECT @result = Name, @lset = LSET
	FROM dbo.Data_Flow
	WHERE Name = @name

	IF(@result IS NULL)
		BEGIN
			INSERT INTO dbo.Data_Flow
			VALUES
			(   @name,        -- Name - varchar(50)
			    '1/1/1900', -- LSET - datetime
			    @cet  -- CET - datetime
			)
		END;
	ELSE
		BEGIN
			UPDATE dbo.Data_Flow
			SET CET = @cet
			WHERE Name = @result
		END;

	SELECT @cet AS CET, @lset AS LSET
END 

go



USE DDS_DALT
GO
CREATE FUNCTION CheckLeapYear
(@year INT)
RETURNS int
AS
BEGIN
    IF(@year % 400 = 0) RETURN 1;
	ELSE
		BEGIN
			IF(@year % 4 = 0 AND @year % 100 <>0) RETURN 1;
		END

	RETURN 0
END



GO
CREATE PROCEDURE CheckDay 
@year INT
AS
BEGIN
	DECLARE @leapyear INT =0,
	@month INT = 1,
	@day int = 1,
	@february int = 28,
	@monthID INT

	IF NOT EXISTS (SELECT DISTINCT Nam FROM dbo.ThangTrongNam WHERE Nam = @year)
	BEGIN
		--Insert into table MonthInYear
		WHILE @month <= 12
		BEGIN
			INSERT INTO dbo.ThangTrongNam
			VALUES (@month, @year); 
			SET @month = @month + 1;
		END
		SET @month = 1;


		--Insert into table DayInMonth
		WHILE @month <= 12
		BEGIN
			--Get MonthID
			SELECT @monthID = IDThang FROM dbo.ThangTrongNam 
			WHERE Thang = @month AND Nam = @year

			--Month with 31 days
			IF (@month IN (1,3,5,7,8,10,12))
			BEGIN
				WHILE @day <= 31
				BEGIN
					INSERT INTO dbo.NgayTrongThang
					VALUES (@monthID,@day)
					SET @day = @day + 1
				END
			END
			
			--Month with 30 days
			IF (@month IN (4,6,9,11))
			BEGIN
				WHILE @day <= 30
				BEGIN
					INSERT INTO dbo.NgayTrongThang
					VALUES (@monthID,@day)
					SET @day = @day + 1
				END
			END

			--February
			IF (@month = 2)
			BEGIN
				EXEC @leapyear = dbo.CheckLeapYear @year 
				IF (@leapyear = 1) SET @february = 29
				WHILE @day <= @february
				BEGIN
					INSERT INTO dbo.NgayTrongThang
					VALUES (@monthID,@day)
					SET @day = @day + 1
				END	
			END

			SET @month = @month + 1
			SET @day = 1
		END
	END
END
GO 
 


--EXEC dbo.CheckDay 1900 -- int

--SELECT * FROM dbo.ThangTrongNam
--SELECT * FROM dbo.NgayTrongThang

--DELETE dbo.ThangTrongNam
--DBCC CHECKIDENT(ThangTrongNam,RESEED, 0)

--DELETE dbo.NgayTrongThang
--DBCC CHECKIDENT(NgayTrongThang, RESEED, 0)



	 