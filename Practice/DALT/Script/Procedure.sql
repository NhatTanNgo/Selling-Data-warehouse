USE MetaData_Demo
GO

GO
CREATE PROCEDURE GET_CET 
@name NVARCHAR(50)
AS
BEGIN 
DECLARE
	@result NVARCHAR(50),
	@date DATETIME
	

SELECT @date = GETDATE(),
	   @result = NULL

	SELECT @result = Name
	FROM dbo.Data_Flow
	WHERE Name = @name

	IF(@result IS NULL)
		BEGIN
			INSERT INTO dbo.Data_Flow
			VALUES
			(   @name,        -- Name - varchar(50)
			    '1/1/1900', -- LSET - datetime
			    @date  -- CET - datetime
			)
		END;
	ELSE
		BEGIN
			UPDATE dbo.Data_Flow
			SET CET = @date
			WHERE Name = @result
		END;

	SELECT @date AS CET
END 

go
--EXEC dbo.GET_CET 'Webtower9_HoaDon'


