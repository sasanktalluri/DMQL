

CREATE INDEX idx_user_transaction_email_payment_status ON UserTransaction (EmailId, PaymentTypeId, StatusId);
CREATE INDEX idx_merchant_transactions_email_payment_status ON MerchantTransactions (EmailId, PaymentTypeId, StatusId);
CREATE INDEX idx_user_card_email_card_number ON UserCard (EmailId, CardNumber);
INSERT INTO "User" (EmailId, MobileNumber, Name, Password, StatusId)
VALUES ('sasanktalluri@gmail.com', '1234567890', 'Sasank','Password123', 1);
DELETE FROM UserTransaction WHERE EmailId = 'anthonywallace@example.net';
DELETE FROM "User" WHERE EmailId = 'anthonywallace@example.net';
UPDATE "User" SET StatusId = 2 WHERE UserId = 1345;

SELECT UT.*, U.Name, S.StatusValue
FROM UserTransaction UT
JOIN "User" U ON UT.EmailId = U.EmailId
JOIN Status S ON UT.StatusId = S.StatusId;
SELECT M.Name AS MerchantName, MT.*
FROM MerchantTransactions MT
JOIN Merchant M ON MT.EmailId = M.EmailId;
SELECT *
FROM UserTransaction
ORDER BY Amount DESC;
SELECT *
FROM Bank
ORDER BY BankName;

SELECT EmailId, SUM(Amount) AS TotalAmount
FROM UserTransaction
GROUP BY EmailId;

SELECT EmailId, COUNT(*) AS TransactionCount
FROM MerchantTransactions
GROUP BY EmailId;

SELECT *
FROM "User"
WHERE EmailId IN (SELECT EmailId FROM UserTransaction WHERE Amount > 500);

SELECT Emailid FROM "User"
WHERE EmailId IN (SELECT EmailId FROM UserTransaction WHERE Amount > 500);

SELECT Name
FROM Merchant
WHERE EmailId IN (SELECT EmailId FROM MerchantTransactions WHERE Amount > 900);

SELECT UT.*, U.Name AS UserName, B.BankName, S.StatusValue
FROM usercard UT
JOIN "User" U ON UT.EmailId = U.EmailId
JOIN Bank B ON UT.BankId = B.BankId
JOIN Status S ON UT.StatusId = S.StatusId;

SELECT M.Name, SUM(MT.Amount) AS TotalAmount
FROM MerchantTransactions MT
JOIN Merchant M ON MT.EmailId = M.EmailId
GROUP BY M.Name
HAVING SUM(MT.Amount) > 1000;

SELECT Name
FROM Merchant
WHERE EmailId IN (
    SELECT EmailId
    FROM MerchantServiceMapping
    WHERE ServiceId IN (SELECT ServiceId FROM MerchantServiceType)
);

SELECT Name
FROM "User" U
WHERE EXISTS (
    SELECT 1
    FROM UserTransaction UT
    WHERE UT.EmailId = U.EmailId
      AND UT.usertransactionid in (select transactionid from Merchanttransactions)
);

SELECT M.Name, (
    SELECT SUM(Amount) FROM MerchantTransactions MT WHERE MT.EmailId = M.EmailId
) AS TotalAmount
FROM Merchant M;

SELECT DISTINCT ServiceType
FROM MerchantServiceType;






