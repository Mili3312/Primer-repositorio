CREATE TABLE Alumnos (
    legajo INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO Alumnos (legajo, nombre, apellido, email) VALUES
(1, 'mario', 'Perez', 'mariop312@yahoo.com'),
(2, 'María', 'avila', 'mariiavila@gmail.com'),
(3, 'Pedro', 'Rodríguez', 'peperodriguez@gmail.com');

CREATE TABLE Editorial (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(30)
);

INSERT INTO Editorial (codigo, nombre) VALUES
(33123, 'Editorial 1'),
(24562, 'Editorial 2'),
(38765, 'Editorial 3');

CREATE TABLE Libros (
    ISBN VARCHAR(50) PRIMARY KEY,
    titulo VARCHAR(100),
    editorialcodigo INT,
    FOREIGN KEY (editorialcodigo) REFERENCES Editorial(codigo)
);

INSERT INTO Libros (ISBN, titulo, editorialcodigo) VALUES
('123456789', 'Clean code', 33123),
('234567890', 'El principito', 24562),
('345678901', 'design thinking', 38765);
