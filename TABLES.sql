CREATE TABLE authors (
	
    author_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	birth_date DATE 
);


CREATE TABLE books (

	book_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
    gener VARCHAR(255),
    publication_year YEAR,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE borrowers (

	borrow_id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone_number VARCHAR(12),
    address VARCHAR(350)
);


CREATE TABLE loans (

	book_id INT,
    borrow_id INT,
    loan_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books (book_id),
	FOREIGN KEY (borrow_id) REFERENCES borrowers (borrow_id)
);

DROP TABLE loan;














