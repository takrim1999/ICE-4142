USE pubs;

SELECT au_lname,title_id FROM authors JOIN titleauthor ON authors.au_id=titleauthor.au_id