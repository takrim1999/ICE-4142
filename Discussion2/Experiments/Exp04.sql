CREATE TABLE CustomerAndSuppliers(
cust_id CHAR(6) PRIMARY KEY CHECK(cust_id LIKE '[CS][0-9][0-9][0-9][0-9][0-9]'),
cust_fname CHAR(15) NOT NULL,

)

--CREATE TABLE name()