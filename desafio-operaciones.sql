-- 1. Crear Base de datos posts
CREATE DATABASE posts;
-- 2. Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido, descripción
CREATE TABLE post(
id INT, nombre_usuario VARCHAR(25),
fecha_de_creacion DATE,
contenido VARCHAR(100),
descripcion VARCHAR(200),
PRIMARY KEY(id)
);
-- 3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO post
(id,nombre_usuario, fecha_de_creacion, contenido, descripcion) VALUES
(1,'Pamela', '2020-11-12', 'contenido para pamela1',  'descripcion de pamela1'),
(2,'Pamela', '2020-11-12', 'contenido para pamela2',  'descripcion de pamela2'),
(3,'Carlos', '2020-11-12', 'contenido para  carlos',  'descripcion de carlos' );
-- 4. Modificar la tabla post, agregando la columna título
ALTER TABLE post
ADD titulo VARCHAR(50);
-- 5. Agregar título a las publicaciones ya ingresadas
UPDATE post
SET titulo='Titulo Pamela' WHERE nombre_usuario='Pamela';
UPDATE post
SET titulo='Titulo Carlos' WHERE nombre_usuario='Carlos';
-- 6. Insertar 2 post para el usuario "Pedro"
INSERT INTO post
(id,nombre_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES
(4,'Pedro', '2020-11-12', 'contenido para pedro', 'descripcion pedro1', 'Titulo pedro'),
(5,'Pedro', '2020-11-12', 'contenido para pedro2','descripcion pedro2', 'Titulo pedro');
-- 7. Eliminar el post de Carlos
DELETE FROM post WHERE nombre_usuario='Carlos';
-- 8. Ingresar un nuevo post para el usuario "Carlos"
INSERT INTO post(id,nombre_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES
(6,'Carlos', '2020-11-12', 'contenido nuevo carlos', 'descripcion nuevo carlos', 'titulo carlos');
