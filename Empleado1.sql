CREATE TABLE empleado (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    salario DECIMAL(10),
    seccion VARCHAR(50)
);


INSERT INTO empleado (nombre, apellido, salario, seccion) 
VALUES 
    ('Juan', 'Gomez', 87766, 'Desarrollo de Software'),
    ('Marta', 'Flores', 37637, 'QA'),
    ('Flor', 'Hernandez', 82844, 'Desarrollo de Software'),
    ('Isabel', 'Fernandez', 2475, 'QA'),
    ('Pablo', 'Rodriguez', 75826, 'Desarrollo de Software'),
    ('Pepe', 'Ramirez', 947293, 'Desarrollo de Software'),
    ('Sergio', 'Flores', 6253, 'Desarrollo de Software'),
    ('Agustina', 'Ramirez', 22223, 'AdmBasesDeDatos'),
    ('Daniel', 'Farias', 9999, 'AdmBasesDeDatos'),
    ('Florencia', 'Santos', 67376, 'QA'),
    ('Osvaldo', 'Mercado', 28867, 'QA'),
    ('Ramiro', 'Gonzalez', 398577, 'QA'),
    ('Francisco', 'Villagra', 386173, 'QA'),
    ('Julio', 'Villafañe', 27327, 'Desarrollo de Software'),
    ('Valentin', 'Alvarez', 86564, 'Desarrollo de Software');
	
	UPDATE empleado
SET salario = salario * 1.23;

SELECT nombre, apellido, salario
FROM empleado
ORDER BY salario DESC;

DELETE FROM empleados
WHERE nombre LIKE 'R%';

    INSERT INTO empleado (nombre, apellido, salario, seccion) 
VALUES 
    ('Yessica', 'Alcaraz', 500000, 'Desarrollo de Software'),
    ('Liliana', 'Gomez', 750000, 'QA');
	
SELECT nombre, apellido, salario
FROM empleado
WHERE seccion = 'QA' AND salario > 200000;
	
SELECT COUNT(*)
FROM empleados
WHERE salario > 500000.00;

	
