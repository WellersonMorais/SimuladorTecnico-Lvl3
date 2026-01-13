INSERT INTO users (name, email) VALUES
('Ana Souza', 'ana@telos.com'),
('Carlos Lima', 'carlos@telos.com'),
('Mariana Rocha', 'mariana@telos.com');

INSERT INTO books (title, author, genre, published_year) VALUES 
('Máscara da Maldade', 'Dennis Lynn Rader', 'Biografia', 2017)


update books
set published_year = 2019
where book_id = 4;

select * from books

DBCC CHECKIDENT ('books', RESEED, 3);

DELETE FROM books where book_id = 1002;






