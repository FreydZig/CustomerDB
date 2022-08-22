USE [CustomerLib_Demin]
GO
CREATE TABLE [dbo].[Customer]
(
	[CustomerId] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[FirstName] NVARCHAR (50) NULL,
	[LastName] NVARCHAR (50) NOT NULL,
	[PhoneNumber] NVARCHAR (12) NULL,
	[Email] NVARCHAR (255) NULL,
	[TotalPurchasesAmount] MONEY NULL,
	CHECK ([Email] LIKE '%@%.%'),
	CHECK ([TotalPurchasesAmount]>=(0)),
	CHECK (len([FirstName])<=(50)),
	CHECK (len([LastName])<=(50) AND len([LastName]) > 0),
	CHECK (len([PhoneNumber])<=(15) AND [PhoneNumber] LIKE '+%')
)