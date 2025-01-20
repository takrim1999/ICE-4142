-- -- This is from Task 1 of lab manual
-- -- Show the name of the books which have yearly total sales of more than 8000.
USE pubs; -- This is to select my database pubs
SELECT "Tables" = TABLE_NAME FROM INFORMATION_SCHEMA.TABLES; -- to see the tables pubs database contains
-- As this task says about finding the sales we should search the sales table to find out the fields and data
-- SELECT * FROM titles;
-- But there is nothing like that so we are bruteforcing to find the yearly sales amount
-- Finally it is found in titles as ytd_sales column of table so...
SELECT title, ytd_sales FROM titles WHERE ytd_sales > 8000; 