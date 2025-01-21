-- Discussion 2 Task 2
-- Show the author name(s) of the book which has the maximum royalty
SELECT "Author Name" = au_fname +' '+ au_lname FROM authors where au_id IN (select au_id from titleauthor where royaltyper = (SELECT MAX(royaltyper) FROM titleauthor))