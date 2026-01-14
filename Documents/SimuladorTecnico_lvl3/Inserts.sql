INSERT INTO users (name, email) VALUES
('Ana Souza', 'ana@telos.com'),
('Carlos Lima', 'carlos@telos.com'),
('Mariana Rocha', 'mariana@telos.com');

INSERT INTO users (name, email) VALUES
('João Pereira', 'joao@telos.com'),
('Fernanda Alves', 'fernanda@telos.com'),
('Lucas Martins', 'lucas@telos.com'),
('Patrícia Nogueira', 'patricia@telos.com'),
('Rafael Costa', 'rafael@telos.com'),
('Beatriz Farias', 'beatriz@telos.com'),
('Eduardo Moreira', 'eduardo@telos.com');


update users
set email = 'lucasM@telos.com'
where name = 'Lucas Martins';



USE simulador_3;

INSERT INTO books (title, author, genre, published_year) VALUES 
('Máscara da Maldade', 'Dennis Lynn Rader', 'Biografia', 2017)

update users
set name = 'Ana Carvalho'
where user_id = 1;


update books
set published_year = 2019
where book_id = 4;

select * from books


DELETE FROM books where book_id = 1002;

DELETE FROM users where user_id > 999;


insert into loans (book_id, user_id) values (1,3);
select * from loans

INSERT INTO books (title, author, genre, published_year) VALUES
('Sombras do Passado', 'Dennis Lynn Rader', 'Biografia', 2017),
('O Silêncio da Noite', 'Stephen King', 'Terror', 1986),
('A Torre Negra', 'Stephen King', 'Fantasia', 1982),
('It: A Coisa', 'Stephen King', 'Terror', 1987),
('O Código Da Vinci', 'Dan Brown', 'Suspense', 2003),
('Anjos e Demônios', 'Dan Brown', 'Suspense', 2000),
('Inferno', 'Dan Brown', 'Suspense', 2013),
('Orgulho e Preconceito', 'Jane Austen', 'Romance', 1813),
('Razão e Sensibilidade', 'Jane Austen', 'Romance', 1811),
('Emma', 'Jane Austen', 'Romance', 1815),
('1984', 'George Orwell', 'Ficção Científica', 1949),
('A Revolução dos Bichos', 'George Orwell', 'Fábula', 1945),
('Fahrenheit 451', 'Ray Bradbury', 'Ficção Científica', 1953),
('O Homem Invisível', 'H. G. Wells', 'Ficção Científica', 1897),
('A Máquina do Tempo', 'H. G. Wells', 'Ficção Científica', 1895),
('O Hobbit', 'J. R. R. Tolkien', 'Fantasia', 1937),
('O Senhor dos Anéis: A Sociedade do Anel', 'J. R. R. Tolkien', 'Fantasia', 1954),
('O Senhor dos Anéis: As Duas Torres', 'J. R. R. Tolkien', 'Fantasia', 1954),
('O Senhor dos Anéis: O Retorno do Rei', 'J. R. R. Tolkien', 'Fantasia', 1955),
('Dom Casmurro', 'Machado de Assis', 'Romance', 1899),
('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Romance', 1881),
('O Alienista', 'Machado de Assis', 'Conto', 1882),
('Capitães da Areia', 'Jorge Amado', 'Drama', 1937),
('Gabriela, Cravo e Canela', 'Jorge Amado', 'Romance', 1958),
('Dona Flor e Seus Dois Maridos', 'Jorge Amado', 'Romance', 1966);


INSERT INTO loans (book_id, user_id) VALUES (2, 1);
INSERT INTO loans (book_id, user_id) VALUES (3, 2);
INSERT INTO loans (book_id, user_id) VALUES (4, 3);
INSERT INTO loans (book_id, user_id) VALUES (5, 4);
INSERT INTO loans (book_id, user_id) VALUES (6, 5);
INSERT INTO loans (book_id, user_id) VALUES (1, 2);
INSERT INTO loans (book_id, user_id) VALUES (2, 3);
INSERT INTO loans (book_id, user_id) VALUES (7, 1);
INSERT INTO loans (book_id, user_id) VALUES (8, 6);
INSERT INTO loans (book_id, user_id) VALUES (3, 1);

INSERT INTO loans (book_id, user_id) VALUES (17, 1);
INSERT INTO loans (book_id, user_id) VALUES (9, 2);
INSERT INTO loans (book_id, user_id) VALUES (8, 3);
INSERT INTO loans (book_id, user_id) VALUES (12, 4);
INSERT INTO loans (book_id, user_id) VALUES (15, 5);
INSERT INTO loans (book_id, user_id) VALUES (1, 2);
INSERT INTO loans (book_id, user_id) VALUES (20, 3);
INSERT INTO loans (book_id, user_id) VALUES (14, 1);
INSERT INTO loans (book_id, user_id) VALUES (13, 6);
INSERT INTO loans (book_id, user_id) VALUES (13, 1);






