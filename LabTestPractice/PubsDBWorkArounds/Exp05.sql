USE pubs;
-- SELECT * FROM authors;
SELECT pub_id FROM titles GROUP BY pub_id;
-- SELECT * FROM publishers;