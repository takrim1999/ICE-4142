USE pubs;
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES
-- SELECT * FROM publishers;
-- SELECT * FROM sales;
SELECT title,ytd_sales FROM titles WHERE ytd_sales>8000;