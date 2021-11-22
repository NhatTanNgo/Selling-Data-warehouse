USE MetaData_Demo
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

----
USE DDS_DALT
go
CREATE PROCEDURE Check_Day 
@day INT, @month INT, @year INT 
AS
DECLARE
	@Idthang  INT  = 0 
BEGIN
	 SELECT @Idthang = IDThang  
	 FROM dbo.ThangTrongNam 
	 WHERE Thang = @month AND Nam = @year

	 IF (@Idthang = 0)
		BEGIN 
			INSERT INTO dbo.ThangTrongNam
			VALUES
			(@month,@year)

			SELECT @Idthang = IDThang  
			FROM dbo.ThangTrongNam
			WHERE Thang = @month AND Nam = @year
		END 
	ELSE
		BEGIN
			IF NOT EXISTS (SELECT * FROM dbo.NgayTrongThang 
						   WHERE IDThang = @Idthang AND Ngay = @day)
				BEGIN
					INSERT INTO dbo.NgayTrongThang
					VALUES
					(@Idthang, @day)   
				END
		END
END
GO 





 

