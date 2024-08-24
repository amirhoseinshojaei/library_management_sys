SELECT *
from authors;


SELECT *
from books;

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