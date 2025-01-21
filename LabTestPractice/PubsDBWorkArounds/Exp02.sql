-- -- This is from the Task 2
-- Show the name of the books which have royalty of 12 to 24.
USE pubs;
-- SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES;
-- SELECT title,royalty FROM titles WHERE 12<=royalty AND royalty<=24;

SELECT title,royalty FROM titles WHERE royalty BETWEEN 12 AND 24;