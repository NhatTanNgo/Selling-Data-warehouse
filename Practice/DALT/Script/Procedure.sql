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

USE NDS_Demo

CREATE TABLE [dbo].[Receipt_NDS] (
  [ReceiptID] int IDENTITY(1, 1) NOT NULL,
  [ReceiptNK] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [CusID] int NOT NULL,
  [StoreID] int NULL,
  [SoldDay] datetime NULL,
  [SourceID] int NULL,
  [Status] int NULL,
  [CreatedDay] datetime NULL,
  [UpdatedDay] datetime NULL,

PRIMARY KEY CLUSTERED 
(
	[ReceiptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE dbo.Receipt_NDS
ADD
CONSTRAINT FK_Re_Cus
FOREIGN KEY (CusID)
REFERENCES dbo.Customer_NDS,

CONSTRAINT FK_Re_Store
FOREIGN KEY (StoreID)
REFERENCES dbo.Store_NDS,

CONSTRAINT FK_Re_Src
FOREIGN KEY (SourceID)
REFERENCES dbo.Source_NDS



 
