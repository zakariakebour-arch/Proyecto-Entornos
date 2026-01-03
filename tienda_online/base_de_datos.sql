CREATE DATABASE tienda_online
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE tienda_online;
CREATE TABLE usuarios (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE zapatos (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(150) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    activo TINYINT(1) DEFAULT 1,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    imagen VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO zapatos (nombre, descripcion, precio, stock, activo, imagen) VALUES
('Adidas Runner', 'Zapatillas Adidas deportivas clásicas', 89.99, 15, 1, 'imagenes/1adidas.jpg'),
('Converse Classic', 'Zapatillas Converse altas negras', 79.99, 10, 1, 'imagenes/converseclasic.jpg'),
('Nike Air One', 'Zapatillas Nike urbanas blancas', 99.99, 8, 1, 'imagenes/1nike.avif'),
('Vans Old Skool', 'Zapatillas Vans casual azul', 74.99, 20, 1, 'imagenes/1vans.avif'),
('Adidas Runner 2', 'Zapatillas Adidas deportivas modernas', 92.99, 12, 1, 'imagenes/adidas runner2.jpg'),
('Converse Classic 2', 'Zapatillas Converse altas beige', 82.99, 9, 1, 'imagenes/converse classic2.webp'),
('Nike Air Two', 'Zapatillas Nike urbanas grises', 101.99, 6, 1, 'imagenes/nike air two.jpeg'),
('Vans Street 2', 'Zapatillas Vans casual marrón', 76.99, 18, 1, 'imagenes/2vans.avif'),
('Adidas Street 3', 'Zapatillas Adidas street blancas', 95.99, 11, 1, 'imagenes/adidas street3.jpg'),
('Converse Classic 3', 'Zapatillas Converse altas blancas', 84.99, 7, 1, 'imagenes/3converse.avif'),
('Nike Air Three', 'Zapatillas Nike deportivas azules', 104.99, 5, 1, 'imagenes/3nike.avif'),
('Vans Casual 3', 'Zapatillas Vans casual negras', 78.99, 14, 1, 'imagenes/3vans.avif'),
('Adidas Urban 4', 'Zapatillas Adidas urbanas negras', 97.99, 10, 1, 'imagenes/adidas samba.avif'),
('Converse Classic 4', 'Zapatillas Converse altas negras', 86.99, 8, 1, 'imagenes/classic plataforma.webp'),
('Nike Air Four', 'Zapatillas Nike urbanas blancas', 107.99, 6, 1, 'imagenes/4nike.avif'),
('Vans Casual 4', 'Zapatillas Vans casual grises', 79.99, 16, 1, 'imagenes/4vans.avif'),
('Adidas Pro 5', 'Zapatillas Adidas deportivas premium', 109.99, 7, 1, 'imagenes/adidas sambablancas.jpg'),
('Converse Classic 5', 'Zapatillas Converse altas crema', 88.99, 6, 1, 'imagenes/converse classic 5.jpeg'),
('Nike Air Five', 'Zapatillas Nike deportivas blancas', 112.99, 4, 1, 'imagenes/5nike.avif'),
('Vans Casual 5', 'Zapatillas Vans casual verdes', 81.99, 13, 1, 'imagenes/5vans.avif'),
('Adidas Elite 6', 'Zapatillas Adidas edición especial', 119.99, 5, 1, 'imagenes/adidas beige.avif'),
('Converse Classic 6', 'Zapatillas Converse altas blancas', 89.99, 5, 1, 'imagenes/converse clasic blanca.webp'),
('Nike Air Six', 'Zapatillas Nike urbanas verdes', 114.99, 3, 1, 'imagenes/6nike.avif'),
('Vans Casual 6', 'Zapatillas Vans casual negras', 83.99, 12, 1, 'imagenes/6vans.avif');

CREATE TABLE categorias (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE zapato_categoria (
    zapato_id INT NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY (zapato_id, categoria_id)
);
CREATE TABLE pedidos (
    id INT NOT NULL AUTO_INCREMENT,
    usuario_id INT,
    total DECIMAL(10,2) NOT NULL,
    estado ENUM('pendiente','pagado','cancelado') DEFAULT 'pendiente',
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE TABLE pedido_detalle (
    id INT NOT NULL AUTO_INCREMENT,
    pedido_id INT NOT NULL,
    zapato_id INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id)
);
