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

