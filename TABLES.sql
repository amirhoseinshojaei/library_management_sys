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


INSERT INTO authors (name,birth_date) 
VALUES  ('alexander', '1920-01-13'),
        ('J.K. Rowling', '1965-07-31'),
        ('George Orwell', '1903-06-25'),
        ('J.R.R. Tolkien', '1892-01-03');


INSERT INTO books (name, gener, publication_year, author_id)VALUES
('harry','fantasy',1999,1),
('jonas','teenager',1999,2),
('stranger','action',1999,3),
('snowpierce','science',1999,4)
;


INSERT INTO borrowers (first_name, last_name, phone_number, address)
VALUES  ('alex', 'jokovich', '98-910-989-1', NULL),
        ('Aram','Shojaei','98-934-935-1','123 main st'),
        ('hunam','suzane','94-932-980-1', '22 main frank')
;



INSERT INTO loans (book_id, borrow_id, loan_date, return_date)
VALUES  (1, 3, '2024-08-01', NULL),
        (4, 2, '2024-08-05', '2024-08-12'),
        (1, 1, '2024-08-05', '2024-08-22'),
        (2, 3, '2024-05-01', '2024-05-12')
;


