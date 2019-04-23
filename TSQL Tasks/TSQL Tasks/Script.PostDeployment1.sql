/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM LOG;
DELETE FROM ACCOUNT;


INSERT INTO ACCOUNT (AcctNo, Fname, Lname, CreditLimit, Balance) VALUES
(12345678, 'Connor', 'Dickson', 5000, 6000),
(32142564, 'Blah', 'Bog', 1000, 2000);

INSERT INTO LOG (OrigAcct, LogDateTime, RecAcct, Amount) VALUES
(32142564, '2008-06-25 08:26:15', 12345678, 218.05);
END;