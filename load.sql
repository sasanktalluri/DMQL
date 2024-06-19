-- Load data into Status table from status.csv
COPY Status(StatusId, StatusValue)
FROM 'statuses.csv'
DELIMITER ','
CSV HEADER;

-- Load data into "User" table from user.csv
COPY "User"(UserId, EmailId, MobileNumber, Name, Password, StatusId, CreatedTimestamp, ModifiedTimestamp)
FROM 'users.csv'
DELIMITER ','
CSV HEADER;

-- Load data into Bank table from bank.csv
COPY Bank(BankId, BankName)
FROM 'banks.csv'
DELIMITER ','
CSV HEADER;

-- Load data into UserCard table from usercard.csv
COPY UserCard(UserCardMappingId, EmailId, CardNumber, BankId, ExpiryDate, StatusId, CreatedTimestamp, ModifiedTimestamp)
FROM 'user_cards.csv'
DELIMITER ','
CSV HEADER;

-- Load data into Merchant table from merchant.csv
COPY Merchant(MerchantId, EmailId, Name, Password, MobileNumber, IsActive, CreatedTimestamp, ModifiedTimestamp)
FROM 'merchants.csv'
DELIMITER ','
CSV HEADER;

-- Load data into MerchantServiceType table from merchantservicetype.csv
COPY MerchantServiceType(ServiceId, ServiceType)
FROM 'service_types.csv'
DELIMITER ','
CSV HEADER;

-- Load data into MerchantServiceMapping table from merchantservicemapping.csv
COPY MerchantServiceMapping(MerchantServiceMappingId, EmailId, ServiceId, DiscountPercent, IsActive, CreatedTimestamp, ModifiedTimestamp)
FROM 'mappings.csv'
DELIMITER ','
CSV HEADER;

-- Load data into PaymentType table from paymenttype.csv
COPY PaymentType(PaymentTypeId, PaymentFrom, PaymentTo, PaymentType)
FROM 'payment_types.csv'
DELIMITER ','
CSV HEADER;

-- Load data into UserTransaction table from usertransaction.csv
COPY UserTransaction(UserTransactionId, EmailId, Amount, TransactionDateTime, PaymentTypeId, Remarks, Info, StatusId, PointsEarned, IsRedeemed)
FROM 'user_transactions.csv'
DELIMITER ','
CSV HEADER;

-- Load data into MerchantTransactions table from merchanttransactions.csv
COPY MerchantTransactions(TransactionId, EmailId, Amount, TransactionDateTime, PaymentTypeId, Remarks, Info, StatusId)
FROM 'merchant_transactions.csv'
DELIMITER ','
CSV HEADER;

-- Load data into OTPPurpose table from otppurpose.csv
COPY OTPPurpose(OTPPurposeId, OTPPurpose)
FROM 'otp_purposes.csv'
DELIMITER ','
CSV HEADER;

-- Load data into OTP table from otp.csv
COPY OTP(OTPId, OTP, ReferenceId, ExpiryDateTime, OTPPurposeId, IsValid)
FROM 'otps.csv'
DELIMITER ','
CSV HEADER;
