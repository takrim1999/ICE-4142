USE pubs;
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES
-- SELECT * FROM publishers;
-- SELECT * FROM sales;
SELECT title,royalty FROM titles WHERE (royalty>=12 AND royalty<=24);