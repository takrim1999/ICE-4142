USE pubs;
SELECT type,AVG(price) FROM titles GROUP BY type HAVING AVG(price)>15;