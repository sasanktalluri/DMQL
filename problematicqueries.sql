SELECT UT.*, U.Name, S.StatusValue
FROM UserTransaction UT
JOIN "User" U ON UT.EmailId = U.EmailId
JOIN Status S ON UT.StatusId = S.StatusId;

SELECT UT.*, U.Name AS UserName, B.BankName, S.StatusValue
FROM usercard UT
JOIN "User" U ON UT.EmailId = U.EmailId
JOIN Bank B ON UT.BankId = B.BankId
JOIN Status S ON UT.StatusId = S.StatusId;

SELECT *
FROM "User"
WHERE EmailId IN (SELECT EmailId FROM UserTransaction WHERE Amount > 500);