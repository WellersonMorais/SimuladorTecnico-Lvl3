create database simulador_3
go

use simulador_3
go

create table books (
book_id INT IDENTITY(1,1) PRIMARY KEY,
title varchar(200) NOT NULL,
author varchar(150) NOT NULL,
genre varchar(50) NOT NULL,
published_year INT
);

create table users(
user_id INT identity(1,1) primary key,
name varchar(150) not null,
email varchar(150) not null unique 
)

create table loans(
loan_id INT identity(1,1) primary KEY,
book_id INT not null,
user_id INT not null,
loan_date DATE not null default GETDATE(),
return_date date null,

	constraint fk_loan_books
		FOREIGN KEY (book_id) REFERENCES books(book_id),
	constraint fk_loan_users
		FOREIGN KEY (user_id) REFERENCES users(user_id)
);



USE simulador_3;


select * from users

select * from books

select title from books where title = 'Dom casmurro'

select book_id from books where title = 'Dom Casmurro'

select * from books where genre = 'terror'


SELECT Books.title, Users.name, Loans.loan_date
FROM Loans
JOIN Books ON Loans.book_id = Books.book_id
JOIN Users ON Loans.user_id = Users.user_id
WHERE Loans.return_date IS NULL;

SELECT Users.name
FROM Users
WHERE (SELECT COUNT(*) FROM Loans WHERE Loans.user_id =
Users.user_id) > 3;

CREATE FUNCTION TotalLoans (@user_id INT)
RETURNS INT
AS
BEGIN
RETURN (SELECT COUNT(*) FROM Loans WHERE user_id = @user_id);
END;

SELECT dbo.TotalLoans(2) AS total_emprestimos;

select * from loans 




