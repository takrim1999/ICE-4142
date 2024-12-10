USE pubs;
SELECT Name= (au_fname+' '+au_lname),royalty FROM authors JOIN titleauthor ON authors.au_id = titleauthor.au_id JOIN titles ON titleauthor.title_id=titles.title_id WHERE titles.royalty=(SELECT MAX(royalty) FROM titles);
