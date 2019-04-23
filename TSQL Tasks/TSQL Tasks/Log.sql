CREATE TABLE [dbo].[Log]
(
	[OrigAcct] INT NOT NULL FOREIGN KEY REFERENCES Account(AcctNo), 
    [LogDateTime] DATETIME NOT NULL, 
    [RecAcct] INT NULL, 
    [Amount] MONEY NOT NULL
	PRIMARY KEY (OrigAcct, LogDateTime)
)
