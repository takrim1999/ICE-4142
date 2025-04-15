USE pubs;
SELECT "Name"=au_fname + ' ' + SUBSTRING(au_lname,1,1) + '.', phone FROM authors;