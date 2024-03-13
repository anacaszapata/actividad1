CREATE TABLE empresas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    nit VARCHAR(45),
    telefono VARCHAR(20),
    direccion VARCHAR(45)
);


INSERT INTO empresas (nombre,nit,telefono,direccion)
VALUES('test','test nit','2222222','555.88')

CREATE TABLE paises(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45)
);


INSERT INTO paises(nombre)
VALUES('Colombia')

CREATE TABLE vehiculos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(45),
    modelo VARCHAR(45),
    marca VARCHAR (45),
    color VARCHAR(45),
    tipo_vehiculo VARCHAR(45)
);

INSERT INTO vehiculos(placa,modelo,marca,color,tipo_vehiculo)
VALUES('111A1','AMG','Mercedez benz','gris','convertible')

CREATE TABLE ciudad(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45)
);

INSERT INTO ciudad(nombre)
VALUES('Medellin')

CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(45),
    apellidos VARCHAR(45),
    correo VARCHAR(45),
    password VARCHAR(45),
    edad VARCHAR(45),
    genero VARCHAR(45),
    altura VARCHAR(45),
    peso VARCHAR(45)
);
INSERT INTO usuarios(nombres,apellidos,correo,password,edad,genero,altura,peso)
VALUES('Ana','castrillon','a@gmail.com','12345','12','femenino','1,57','54')

SELECT nombres,password FROM usuarios

SELECT * FROM usuarios

UPDATE usuarios set nombres = 'carla' WHERE nombres = 'Sofia' AND id = 1

-- drop table borra la tabla y el delete borra todo el contenido de la tabla y con where solo borra el elemnto que le indique

DELETE FROM usuarios WHERE id = 1


CREATE TABLE test_tabla (
	id serial,
	nombre VARCHAR(45),
	apellido VARCHAR(24),
	primary key (id)
);

select * from test_tabla




insert into test_tabla (nombre, apellido) values ('victor', 'mejia')


drop table test_tabla 


delete FROM test_tabla where nombre = 'victor'


update test_tabla set nombre = '' where id = 5


update test_tabla set nombre = 'josefina' where nombre = ''

delete from test_tabla where nombre = 'sofia'



update test_tabla set nombre = 'manuel' where nombre = 'josefina'



insert into test_tabla (nombre, apellido) values ('ana', 'zapata')


select * from test_tabla 

select * from test_tabla where id > 5


-- renombra la tabla pero no camabia el contenido
alter table test_tabla rename to personas


select * from personas


-- modifica y añade una columna
alter table personas add column edad int 


update personas set edad = 20 where id = 5


-- Cambiar o descartar un valor predeterminado de columna. Los valores predeterminados que se establecen solo se aplican a comandos INSERT, no a filas que ya están en la tabla.
-- Cambiar el nombre de una columna o una tabla sin cambiar el tipo de datos o el tamaño dentro de la columna o tabla. Puede omitir la columna de la palabra clave.
-- Añadir o descartar una restricción de tabla o de columna. No se puede cambiar una restricción. En lugar de eso debe descartar la restricción y crear una nueva.
-- -- Modificar la longitud de una columna varchar.


ALTER TABLE personas ADD column mayor_de_edad boolean


ALTER TABLE personas DROP column mayor_de_edad



