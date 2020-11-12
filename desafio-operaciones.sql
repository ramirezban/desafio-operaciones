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
(1,'Pamela', '2020-11-12', 'Contenido para Pamela 1',  'descripcion de pamela 1'),
(2,'Pamela', '2020-11-12', 'Contenido para Pamela 2',  'descripcion de pamela 2'),
(3,'Carlos', '2020-11-12', 'Contenido para Carlos'  ,  'descripcion de Carlos'  );

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
(4,'Pedro', '2020-11-12', 'Contenido para Pedro 1', 'Descripcion Pedro 1', 'Titulo pedro'),
(5,'Pedro', '2020-11-12', 'Contenido para Pedro 2', 'Descripcion Pedro 2', 'Titulo pedro');

-- 7. Eliminar el post de Carlos
DELETE FROM post WHERE nombre_usuario='Carlos';

-- 8. Ingresar un nuevo post para el usuario "Carlos"
INSERT INTO post(id,nombre_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES
(6,'Carlos', '2020-11-12', 'Contenido nuevo Carlos', 'Descripcion nuevo Carlos', 'Titulo carlos');

--Parte 2

-- 9. Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación, contenido, que se relacione con la tabla posts.
CREATE TABLE comentarios(
id INT,
fecha DATE,
hora TIME,
contenido VARCHAR(100),
FOREIGN KEY(id) REFERENCES post(id)
);
-- 10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos"
INSERT INTO comentarios
(id,fecha, hora, contenido) VALUES
(1,'2020-11-12', '16:14:10', 'Comentario 1 pamela'),
(1,'2020-11-12', '16:14:40', 'Comentario 2 pamela'),
(6,'2020-11-12', '17:30:05', 'Comentario 1 carlos'),
(6,'2020-11-12', '17:50:25', 'Comentario 2 carlos'),
(6,'2020-11-12', '17:35:30', 'Comentario 3 carlos'),
(6,'2020-11-12', '18:20:30', 'Comentario 4 carlos');

-- 11. Crear un nuevo post para "Margarita"
INSERT INTO post
(id,nombre_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES
(7,'Margarita', '2020-11-12', 'Contenido Margarita', 'Descripcion matgarita', 'Titulo Margarita');

-- 12. Ingresar 5 comentarios para el post de Margarita.
INSERT INTO comentarios
(id,fecha, hora, contenido) VALUES
(7,'2020-08-15', '18:30:10', 'Comentario 1 Margarita'),
(7,'2020-08-15', '18:45:17', 'Comentario 2 Margarita'),
(7,'2020-08-15', '19:10:35', 'Comentario 3 Margarita'),
(7,'2020-08-15', '20:25:55', 'Comentario 4 Margarita'),
(7,'2020-08-16', '20:10:30', 'Comentario 5 Margarita');
