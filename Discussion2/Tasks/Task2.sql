use pubs;
--SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES;
--SELECT * FROM authors;
--SELECT * FROM publishers
SELECT "Author's Name"=(au_fname + ' ' + au_lname),"Publisher's Name " = pub_name, "Common City" = authors.city FROM authors,publishers WHERE authors.city=publishers.city;