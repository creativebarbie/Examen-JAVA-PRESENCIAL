
CREATE DATABASE IF NOT EXISTS examen_casas;
USE examen_casas;

DROP TABLE IF EXISTS CASAS;
DROP TABLE IF EXISTS PROPIETARIOS;

CREATE TABLE PROPIETARIOS (
    id_propietario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL
);

CREATE TABLE CASAS (
    id_casa INT AUTO_INCREMENT PRIMARY KEY,
    direccion VARCHAR(150) NOT NULL,
    precio DECIMAL(12,2) NOT NULL,
    anio_construccion INT NOT NULL,
    id_propietario INT NOT NULL,
    FOREIGN KEY (id_propietario)
        REFERENCES PROPIETARIOS(id_propietario)
);

INSERT INTO PROPIETARIOS (nombre, apellido, email)
VALUES
('Ana', 'Garcia', 'ana@gmail.com'),
('Carlos', 'Martinez', 'carlos@gmail.com'),
('Laura', 'Perez', 'laura@gmail.com'),
('Pedro', 'Sanchez', 'pedro@gmail.com'),
('Lucia', 'Fernandez', 'lucia@gmail.com');

INSERT INTO CASAS (direccion, precio, anio_construccion, id_propietario)
VALUES
('Calle Mayor 10', 250000, 2005, 1),
('Calle Marina 25', 320000, 2018, 1),
('Avenida Madrid 8', 180000, 1995, 2),
('Calle Sol 14', 210000, 1980, 3),
('Calle Luna 7', 150000, 2020, 4);

SELECT COUNT(*) AS total_propietarios
FROM PROPIETARIOS;

SELECT *
FROM PROPIETARIOS
WHERE apellido = 'Martinez';

SELECT email
FROM PROPIETARIOS;

SELECT *
FROM PROPIETARIOS
WHERE nombre LIKE 'F%';

SELECT *
FROM CASAS
WHERE anio_construccion BETWEEN 1990 AND 2020;

SELECT *
FROM CASAS
ORDER BY precio DESC;

SELECT AVG(precio) AS precio_promedio
FROM CASAS;

SELECT *
FROM CASAS
ORDER BY precio ASC
LIMIT 1;

SELECT
    CASAS.direccion,
    CASAS.precio,
    CASAS.anio_construccion,
    PROPIETARIOS.nombre,
    PROPIETARIOS.apellido
FROM CASAS
INNER JOIN PROPIETARIOS
    ON CASAS.id_propietario = PROPIETARIOS.id_propietario;

SELECT
    PROPIETARIOS.nombre,
    CASAS.precio
FROM PROPIETARIOS
INNER JOIN CASAS
    ON PROPIETARIOS.id_propietario = CASAS.id_propietario
WHERE CASAS.precio > 180000;

USE examen_casas;

SELECT * FROM PROPIETARIOS;

SELECT * FROM CASAS;

USE examen_casas;

SELECT * FROM CASAS;

SELECT COUNT(*) FROM PROPIETARIOS;

SELECT * FROM PROPIETARIOS
WHERE apellido = 'Martinez';

SELECT email FROM PROPIETARIOS;

SELECT * FROM PROPIETARIOS
WHERE nombre LIKE 'F%';

SELECT * FROM CASAS
WHERE anio_construccion BETWEEN 1990 AND 2020;

SELECT * FROM CASAS
ORDER BY precio DESC;

SELECT AVG(precio) FROM CASAS;

SELECT * FROM CASAS
ORDER BY precio ASC
LIMIT 1;