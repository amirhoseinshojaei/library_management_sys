SELECT *
FROM authors;

SELECT *
FROM books;

SELECT *
FROM borrowers;

SELECT *
FROM loans;

SELECT *
FROM books
WHERE author_id = 1
;

SELECT *
FROM loans
WHERE return_date IS NULL 
;

SELECT *
FROM borrowers
WHERE borrow_id = 3
;

SELECT *
FROM loans
WHERE return_date IS NULL AND loan_date < DATE_SUB(CURDATE(), INTERVAL 3 DAY)
;


SELECT *
FROM books AS bk
INNER JOIN authors AS au
	ON bk.author_id = au.author_id
;


SELECT *
FROM loans AS lo
INNER JOIN borrowers AS bor
	ON lo.borrow_id = bor.borrow_id
INNER JOIN books AS bo
	ON 	lo.book_id = bo.book_id
;


SELECT bo.name, COUNT(lo.book_id) as count
FROM loans AS lo
INNER JOIN books AS bo
	ON lo.book_id = bo.book_id
GROUP BY bo.name
ORDER BY count DESC;

DELIMITER //
CREATE PROCEDURE AddBook (IN  name  VARCHAR (250), IN gener VARCHAR(250), IN publication_year YEAR, IN author_id INT ) 
BEGIN 
	INSERT INTO books(name, gener, publication_year, author_id ) VALUES (name,gener, publication_year, author_id);
END //
DELIMITER ;

CALL AddBook('chemical', 'Mystery', 2024, 1);

SELECT au.name, COUNT(au.author_id) AS count
FROM books AS bo
INNER JOIN authors AS au
	ON bo.author_id = au.author_id
GROUP BY au.name
ORDER BY count DESC;