-- Crear esquema usuarios
CREATE SCHEMA usuarios;

-- Crear tabla roles en el esquema usuarios
CREATE TABLE usuarios.roles(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);


-- Crear tabla usuarios en el esquema usuarios
CREATE TABLE usuarios.usuarios(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    alias VARCHAR(25) UNIQUE NOT NULL,
    contrasenia VARCHAR(25) NOT NULL,
	email_principal VARCHAR(50) UNIQUE NOT NULL,
	email_secundario VARCHAR(50) NOT NULL,
    nro_celular NUMERIC NOT NULL,
    tipo_de_usuario INTEGER REFERENCES usuarios.roles(id) NOT NULL,
    fecha_alta DATE NOT NULL,
    fecha_baja DATE NULL
);


-- Insertar los roles Sistema y Administracion en la tabla roles
INSERT INTO usuarios.roles (nombre) VALUES
    ('Administracion'),
    ('Sistema');

-- Insertar los registros de usuarios en la tabla usuarios
INSERT INTO usuarios.usuarios (nombre, apellido, alias, contrasenia, email_principal, email_secundario, nro_celular, tipo_de_usuario, fecha_alta, fecha_baja)
VALUES
('belen', 'garcia', 'belu', 'belu123', 'belu@gmail.com', 'garcia@gmail.com', 2804569885, 1, '2023-11-06', NULL),
('pepe', 'perez', 'pepis', 'pepis123', 'pepe@gmail.com', 'perez@gmail.com', 2804569332, 2, '2023-11-06', NULL);

