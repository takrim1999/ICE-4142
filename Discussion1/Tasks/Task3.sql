USE pubs;
SELECT * FROM titles;
SELECT type, "Average"=AVG(price), "Sum"=SUM(ytd_sales) FROM titles GROUP BY type;