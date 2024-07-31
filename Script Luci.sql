-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS agencia_coches;
USE agencia_coches;

-- Tabla PERSONAS
CREATE TABLE IF NOT EXISTS Personas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    RFC VARCHAR(20),
    Apellidos VARCHAR(100),
    Nombre VARCHAR(100),
    Fecha_nacimiento DATE,
    Sexo CHAR(1),
    Telefono VARCHAR(20),
    Calle_y_Numero VARCHAR(200),
    CP VARCHAR(10),
    Municipio VARCHAR(100)
);

-- Tabla COCHES
CREATE TABLE IF NOT EXISTS Coches (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Matricula VARCHAR(20),
    Modelo VARCHAR(100),
    Propietario INT,
    FOREIGN KEY (Propietario) REFERENCES Personas(ID)
);

-- Tabla SERVICIOS
CREATE TABLE IF NOT EXISTS Servicios (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Tipo_Actividad VARCHAR(100),
    Coche INT,
    Fecha_planificada DATE,
    Fecha_servicio DATE,
    Duracion INT,
    Mecanico VARCHAR(100),
    Tipo_servicio VARCHAR(100),
    FOREIGN KEY (Coche) REFERENCES Coches(ID)
);

-- Tabla VENTAS
CREATE TABLE IF NOT EXISTS Ventas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_venta DATE,
    Coche INT,
    Comercial VARCHAR(100),
    FOREIGN KEY (Coche) REFERENCES Coches(ID)
);

-- AGREGA 5 PERSONAS (CLIENTES)
INSERT INTO Personas (RFC, Apellidos, Nombre, Fecha_nacimiento, Sexo, Telefono, Calle_y_Numero, CP, Municipio)
VALUES ('12345678A', 'García Pérez', 'Juan', '1990-05-15', 'M', '987654321', 'Calle Principal 123', '28001', 'Madrid'),
('87654321B', 'Martínez López', 'Ana', '1985-11-22', 'F', '912345678', 'Avenida Secundaria 456', '28002', 'Madrid'),
('11223344C', 'Fernández Gómez', 'Carlos', '1978-03-30', 'M', '923456789', 'Calle Tercera 789', '28003', 'Madrid'),
('55667788D', 'Sánchez Ruiz', 'María', '1995-07-18', 'F', '934567890', 'Plaza Mayor 101', '28004', 'Madrid'),
('99887766E', 'Hernández Martínez', 'Luis', '1982-09-10', 'M', '945678901', 'Calle Cuarta 202', '28005', 'Madrid');

-- AGREGA 8 COCHES
INSERT INTO Coches (Matricula, Modelo, Propietario)
VALUES ('1234ABC', 'Seat Ibiza', 1),
('5678DEF', 'Volkswagen Golf', 2),
('9012GHI', 'Renault Clio', 3),
('3456JKL', 'Ford Focus', 4),
('7890MNO', 'Toyota Corolla', 5),
('1122PQR', 'Honda Civic', 1),
('3344STU', 'Peugeot 208', 2),
('5566VWX', 'Opel Corsa', 3);

-- AGREGA 15 SERVICIOS
INSERT INTO Servicios (Tipo_Actividad, Coche, Fecha_planificada, Fecha_servicio, Duracion, Mecanico, Tipo_servicio)
VALUES ('Mantenimiento', 1, '2024-07-20', '2024-07-20', 2, 'Carlos López', 'Revision'),
('Reparación', 2, '2024-07-21', '2024-07-21', 3, 'Luis Hernández', 'Cambio de frenos'),
('Inspección', 3, '2024-07-22', '2024-07-22', 1, 'Pedro Ruiz', 'Inspección general'),
('Mantenimiento', 4, '2024-07-23', '2024-07-23', 2, 'José Fernández', 'Cambio de aceite'),
('Reparación', 5, '2024-07-24', '2024-07-24', 4, 'Miguel Torres', 'Cambio de neumáticos'),
('Inspección', 1, '2024-07-25', '2024-07-25', 1, 'Antonio Pérez', 'Inspección de frenos'),
('Mantenimiento', 2, '2024-07-26', '2024-07-26', 2, 'Jorge Castro', 'Cambio de filtros'),
('Reparación', 3, '2024-07-27', '2024-07-27', 3, 'Juan García', 'Reparación de motor'),
('Inspección', 4, '2024-07-28', '2024-07-28', 1, 'Manuel Sánchez', 'Inspección de luces'),
('Mantenimiento', 5, '2024-07-29', '2024-07-29', 2, 'Francisco Díaz', 'Revisión de líquidos'),
('Reparación', 1, '2024-07-30', '2024-07-30', 4, 'Alejandro Morales', 'Cambio de embrague'),
('Inspección', 2, '2024-08-01', '2024-08-01', 1, 'Roberto Gómez', 'Inspección de suspensión'),
('Mantenimiento', 3, '2024-08-02', '2024-08-02', 2, 'Ricardo Ramírez', 'Cambio de batería'),
('Reparación', 4, '2024-08-03', '2024-08-03', 3, 'Fernando Vargas', 'Reparación de aire acondicionado'),
('Inspección', 5, '2024-08-04', '2024-08-04', 1, 'David Mendoza', 'Inspección de sistemas electrónicos');

-- AGREGA 15 VENTAS
INSERT INTO Ventas (Fecha_venta, Coche, Comercial)
VALUES ('2024-07-20', 1, 'Ana Martínez'),
('2024-07-21', 2, 'Luis Hernández'),
('2024-07-22', 3, 'Carlos Fernández'),
('2024-07-23', 4, 'María Sánchez'),
('2024-07-24', 5, 'Juan García'),
('2024-07-25', 1, 'Ana Martínez'),
('2024-07-26', 2, 'Luis Hernández'),
('2024-07-27', 3, 'Carlos Fernández'),
('2024-07-28', 4, 'María Sánchez'),
('2024-07-29', 5, 'Juan García'),
('2024-07-30', 1, 'Ana Martínez'),
('2024-07-31', 2, 'Luis Hernández'),
('2024-08-01', 3, 'Carlos Fernández'),
('2024-08-02', 4, 'María Sánchez'),
('2024-08-03', 5, 'Juan García');

-- Agregar marca y año a la tabla coches
alter table Coches
add Marca varchar(50),
add Año Int;

-- Ahora voy a eliminar los datos de la tabla coches para poder ingresar nuevamente los datos con las nuevas columnas
-- Para eso primero se deshabilita las restricciones de clave foraneas,
-- despues elimino el contenido y por ultimo vuelvo a habilitar la restriccion
set foreign_key_checks = 0;
TRUNCATE TABLE Coches;
set FOREIGN_KEY_CHECKS = 1;

-- Inserto otra vez los 8 coches con las nuevas columnas
INSERT INTO Coches (Matricula, Modelo, Marca, Año, Propietario)
VALUES 
('1234ABC', 'Ibiza', 'Seat', 2019, 1),
('5678DEF', 'Golf', 'Volkswagen', 2018, 2),
('9012GHI', 'Clio', 'Renault', 2020, 3),
('3456JKL', 'Focus', 'Ford', 2017, 4),
('7890MNO', 'Corolla', 'Toyota', 2021, 5),
('1122PQR', 'Civic', 'Honda', 2016, 1),
('3344STU', '208', 'Peugeot', 2019, 2),
('5566VWX', 'Corsa', 'Opel', 2018, 3);

-- Creo la tabla Empleados
CREATE TABLE IF NOT EXISTS Empleados (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellidos VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50),
    Fecha_contratacion DATE
);

-- Creo la tabla Servicios_Realizados
CREATE TABLE IF NOT EXISTS Servicios_Realizados (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Servicio INT,
    Empleado INT,
    FOREIGN KEY (Servicio) REFERENCES Servicios(ID),
    FOREIGN KEY (Empleado) REFERENCES Empleados(ID)
);

-- Agrego 6 empleados
INSERT INTO Empleados (Nombre, Apellidos, Cargo, Fecha_contratacion)
VALUES 
('Carlos', 'López', 'Mecánico', '2020-01-15'),
('Ana', 'Martínez', 'Comercial', '2019-03-22'),
('Luis', 'Hernández', 'Mecánico', '2018-07-11'),
('María', 'Sánchez', 'Mecánico', '2021-05-20'),
('Juan', 'García', 'Comercial', '2017-11-30'),
('Pedro', 'Ruiz', 'Mecánico', '2022-02-14');

-- Asigno empleados responsables a los servicios en la tabla Servicios_Realizados
INSERT INTO Servicios_Realizados (Servicio, Empleado)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5);

-- 1. Obtener el historial completo de servicios realizados a todos los carros, incluyendo detalles del propietario, carro, servicio y empleado responsable.
SELECT p.Nombre, p.Apellidos, c.Matricula, c.Modelo, c.Marca, c.Año, s.Tipo_Actividad, s.Fecha_planificada,
s.Fecha_servicio, s.Duracion, sr.Empleado, e.Nombre AS Nombre_Empleado, e.Apellidos AS Apellidos_Empleado, e.Cargo
FROM  Servicios_Realizados sr
JOIN Servicios s ON sr.Servicio = s.ID
JOIN Coches c ON s.Coche = c.ID
JOIN Personas p ON c.Propietario = p.ID
JOIN Empleados e ON sr.Empleado = e.ID
ORDER BY p.Apellidos, p.Nombre, c.Matricula, s.Fecha_servicio;

-- 2. Obtener el total de ingresos generados por cada tipo de servicio.
-- Primero agrego la columna costo en la tabla Servicios
ALTER TABLE Servicios
ADD Costo DECIMAL(10, 2);

-- Ahora agrego los costos, para no hacer largo el update, pondre los precios por tipo de actividad
update Servicios set Costo = 800.00 where Tipo_Actividad = 'Mantenimiento';
update Servicios set Costo = 600.00 where Tipo_Actividad = 'Reparación';
update Servicios set Costo = 400.00 where Tipo_Actividad = 'Inspección';

-- Ahora obtengo el total de ingresos generados por cada tipo de servicio.
SELECT Tipo_Actividad, SUM(Costo) AS Total_Ingresos
FROM Servicios GROUP BY Tipo_Actividad;

-- 3. Obtener la cantidad de servicios realizados por cada empleado en un período específico.
SELECT e.Nombre, e.Apellidos, COUNT(sr.ID) AS Cantidad_Servicios
FROM  Servicios_Realizados sr JOIN Empleados e ON sr.Empleado = e.ID JOIN Servicios s ON sr.Servicio = s.ID
WHERE s.Fecha_servicio BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY e.ID, e.Nombre, e.Apellidos
ORDER BY Cantidad_Servicios DESC;

-- 4. Obtener la lista de carros que han recibido más de un servicio, junto con el número de servicios recibidos.
SELECT c.Matricula, c.Modelo, c.Marca, c.Año, COUNT(s.ID) AS Numero_Servicios
FROM Servicios s JOIN Coches c ON s.Coche = c.ID
GROUP BY c.ID, c.Matricula, c.Modelo, c.Marca, c.Año
HAVING COUNT(s.ID) > 1
ORDER BY Numero_Servicios DESC;

-- 5. Obtener el promedio de calificaciones de los servicios realizados por cada empleado.
-- Como no existe algun campo para ingresar calificaciones entonces se debe crear
-- Modifico la tabla Servicios, para agregarle una columna de Calificacion
ALTER TABLE Servicios ADD Calificacion INT;

-- Ahora ingreso valores de calificacion para cada servicio (15)
UPDATE Servicios SET Calificacion = 9 WHERE ID = 1;
UPDATE Servicios SET Calificacion = 8 WHERE ID = 2;
UPDATE Servicios SET Calificacion = 10 WHERE ID = 3;
UPDATE Servicios SET Calificacion = 6 WHERE ID = 4;
UPDATE Servicios SET Calificacion = 7 WHERE ID = 5;
UPDATE Servicios SET Calificacion = 8 WHERE ID = 6;
UPDATE Servicios SET Calificacion = 10 WHERE ID = 7;
UPDATE Servicios SET Calificacion = 9 WHERE ID = 8;
UPDATE Servicios SET Calificacion = 8 WHERE ID = 9;
UPDATE Servicios SET Calificacion = 7 WHERE ID = 10;
UPDATE Servicios SET Calificacion = 7 WHERE ID = 11;
UPDATE Servicios SET Calificacion = 10 WHERE ID = 12;
UPDATE Servicios SET Calificacion = 9 WHERE ID = 13;
UPDATE Servicios SET Calificacion = 9 WHERE ID = 14;
UPDATE Servicios SET Calificacion = 8 WHERE ID = 15;

-- Ahora ya puedo calcular el promedio de los servicios realizados de cada empleado
SELECT e.Nombre, e.Apellidos, AVG(s.Calificacion) AS Promedio_Calificacion FROM Servicios_Realizados sr
JOIN Empleados e ON sr.Empleado = e.ID
JOIN Servicios s ON sr.Servicio = s.ID
GROUP BY e.ID, e.Nombre, e.Apellidos
ORDER BY Promedio_Calificacion DESC;

-- 6. Obtener los detalles del último servicio realizado para cada carro.
SELECT s.ID AS Servicio_ID, c.Matricula, c.Modelo, c.Marca, c.Año, s.Tipo_Actividad, s.Fecha_planificada,
s.Fecha_servicio, s.Duracion, s.Mecanico, s.Tipo_servicio, s.Costo FROM Servicios s
JOIN Coches c ON s.Coche = c.ID
JOIN (SELECT Coche, MAX(Fecha_servicio) AS Ultima_Fecha_Servicio FROM Servicios GROUP BY Coche)
ult_serv ON s.Coche = ult_serv.Coche AND s.Fecha_servicio = ult_serv.Ultima_Fecha_Servicio
ORDER BY c.Matricula;

-- 7. Obtener la lista de propietarios que han gastado más de una cantidad específica en servicios.
SELECT p.Nombre, p.Apellidos, p.RFC, SUM(s.Costo) AS Total_Gasto FROM Personas p
JOIN Coches c ON p.ID = c.Propietario
JOIN Servicios s ON c.ID = s.Coche
GROUP BY p.ID, p.Nombre, p.Apellidos, p.RFC
HAVING SUM(s.Costo) > 1000.00
ORDER BY Total_Gasto DESC;

-- 8. Obtener el número de servicios realizados por cada tipo de carro (marca y modelo).
SELECT c.Marca, c.Modelo, COUNT(s.ID) AS Numero_Servicios FROM Servicios s
JOIN Coches c ON s.Coche = c.ID
GROUP BY c.Marca, c.Modelo
ORDER BY Numero_Servicios DESC;

-- 9. Obtener el mes con mayor número de servicios realizados en el último año.
SELECT DATE_FORMAT(s.Fecha_servicio, '%Y-%m') AS Mes, COUNT(s.ID) AS Numero_Servicios FROM Servicios s
WHERE s.Fecha_servicio >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY DATE_FORMAT(s.Fecha_servicio, '%Y-%m')
ORDER BY Numero_Servicios desc LIMIT 1;

-- 10. Obtener la lista de carros y sus propietarios que no han recibido ningún servicio en el último año.
SELECT c.Matricula, c.Modelo, c.Marca, c.Año, p.Nombre, p.Apellidos FROM Coches c
JOIN Personas p ON c.Propietario = p.ID
LEFT JOIN Servicios s ON c.ID = s.Coche AND s.Fecha_servicio >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
WHERE s.ID IS null ORDER BY c.Matricula;