USE simulador_3;

SELECT *
FROM Books b
WHERE b.book_id NOT IN (
    SELECT l.book_id
    FROM Loans l
    WHERE l.return_date IS NULL
);

SELECT Books.title, Users.name, Loans.loan_date
FROM Loans
JOIN Books ON Loans.book_id = Books.book_id
JOIN Users ON Loans.user_id = Users.user_id
WHERE Loans.return_date IS NULL;

SELECT Books.title, Users.name, Loans.loan_date
FROM Loans
JOIN Books ON Loans.book_id = Books.book_id
JOIN Users ON Loans.user_id = Users.user_id
WHERE Loans.return_date IS NOT NULL;


SELECT TOP 2
    u.name,
    COUNT(l.loan_id) AS total_emprestimos
FROM Users u
JOIN Loans l ON u.user_id = l.user_id
GROUP BY u.name
ORDER BY total_emprestimos DESC;



CREATE FUNCTION user_loans_total (@user_id INT)
RETURNS INT
AS
BEGIN
	RETURN (select count(*) AS total_loans 
	from loans 
	where user_id = @user_id);
END

SELECT 
	u.name,
	dbo.user_loans_total(u.user_id) AS total_loans
FROM users u;



ALTER PROCEDURE insert_loan
    @book_id INT,
    @user_id INT
AS
BEGIN

  
    IF (
        SELECT COUNT(*)
        FROM Loans
        WHERE book_id = @book_id
          AND return_date IS NULL
    ) >= 5
    BEGIN
	    RAISERROR ('Todas as unidades deste livro estão emprestadas.', 16, 1);
    	RETURN;
    END

    INSERT INTO Loans (book_id, user_id)
    VALUES (@book_id, @user_id);
END;

EXEC insert_loan
	@book_id = 1,
	@user_id = 2;

	
