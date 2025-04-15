use pubs;
--SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES;
--SELECT * FROM authors;
-- SELECT * FROM titles;
--SELECT * FROM publishers
--SELECT * FROM titleauthor

--SELECT 'Title'=title,'Author Name'=(au_fname + ' ' + au_lname) FROM titleauthor JOIN authors ON titleauthor.au_id = authors.au_id JOIN titles ON titleauthor.title_id=titles.title_id;
SELECT 'Title'=title,'Author Name'=(au_fname + ' ' + au_lname), "Publisher's Name" = pub_name FROM titleauthor JOIN authors ON titleauthor.au_id = authors.au_id JOIN titles ON titleauthor.title_id=titles.title_id JOIN publishers ON titles.pub_id=publishers.pub_id;
