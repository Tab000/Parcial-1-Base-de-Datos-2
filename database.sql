-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS parcial_bd2;
USE parcial_bd2;

-- Eliminar tablas si ya existen
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS clientes;

-- Tabla clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100)
);

-- Tabla pedidos
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    producto VARCHAR(100),
    monto DECIMAL(10, 2),
    fecha DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Datos de prueba para clientes
INSERT INTO clientes (nombre, email) VALUES
('Carlos Mendoza', 'carlos@email.com'),
('Ana Gomez', 'ana@email.com'),
('Juan Perez', 'juan@email.com');

-- Datos de prueba para pedidos
INSERT INTO pedidos (cliente_id, producto, monto, fecha) VALUES
(1, 'Laptop HP', 750.00, '2024-03-01'),
(1, 'Mouse Inalámbrico', 25.00, '2024-03-02'),
(2, 'Teclado Mecánico', 60.00, '2024-03-03'),
(3, 'Monitor 24 pulg', 180.00, '2024-03-04'),
(3, 'Auriculares', 45.00, '2024-03-05');
