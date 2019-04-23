CREATE TABLE [dbo].[Account]
(
	[AcctNo] INT NOT NULL PRIMARY KEY, 
    [Fname] NVARCHAR(50) NOT NULL, 
    [Lname] NVARCHAR(50) NOT NULL, 
	[FullName] AS CONCAT(Fname, ' ', Lname),
    [CreditLimit] MONEY NULL CHECK (CreditLimit > 0), 
    [Balance] MONEY NULL CHECK (Balance > CreditLimit),
	

)

