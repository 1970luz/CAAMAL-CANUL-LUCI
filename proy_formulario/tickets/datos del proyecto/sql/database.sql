-- Crear la tabla Cliente
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Crear la tabla Administrador
CREATE TABLE administrador (
    id_administrador INT AUTO_INCREMENT PRIMARY KEY,
    nombre_administrador VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    id_area INT NOT NULL,
    FOREIGN KEY (id_area) REFERENCES area(id_area)
);

-- Crear la tabla Comentario
CREATE TABLE comentario (
    id_comentario INT AUTO_INCREMENT PRIMARY KEY,
    id_ticket INT NOT NULL,
    comentario TEXT NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL,
    FOREIGN KEY (id_ticket) REFERENCES ticket(id_ticket)
);

-- Crear la tabla Área
CREATE TABLE area (
    id_area INT AUTO_INCREMENT PRIMARY KEY,
    nombre_area VARCHAR(255) NOT NULL
);

-- Crear la tabla Nivel
CREATE TABLE nivel (
    id_nivel INT AUTO_INCREMENT PRIMARY KEY,
    nombre_nivel VARCHAR(255) NOT NULL
);

-- Crear la tabla Estatus
CREATE TABLE estatus (
    id_estatus INT AUTO_INCREMENT PRIMARY KEY,
    nombre_status VARCHAR(255) NOT NULL
);

-- Crear la tabla Ticket
CREATE TABLE ticket (
    id_ticket INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_administrador INT,
    id_area INT NOT NULL,
    incidencia TEXT NOT NULL,
    nivel INT NOT NULL,
    estatus INT NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_cerrado DATETIME,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_administrador) REFERENCES administrador(id_administrador),
    FOREIGN KEY (id_area) REFERENCES area(id_area),
    FOREIGN KEY (nivel) REFERENCES nivel(id_nivel),
    FOREIGN KEY (estatus) REFERENCES estatus(id_estatus)
);