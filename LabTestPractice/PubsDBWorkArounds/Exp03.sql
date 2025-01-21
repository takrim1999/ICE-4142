-- -- From Task 3
-- Show average price of the books of each type, the total yearly sales of that book type along with book type
USE pubs;
SELECT type, 'Average Price' = AVG(ISNULL(price,0)), 'Total Yearly Sales' = SUM(ISNULL(ytd_sales,0)) FROM titles GROUP BY type;