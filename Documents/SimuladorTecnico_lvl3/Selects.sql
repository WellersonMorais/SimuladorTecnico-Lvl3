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


select * from loans 

UPDATE Loans
SET return_date = GETDATE()
WHERE loan_id = 1;





