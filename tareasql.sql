CREATE SCHEMA `db_empresa` ;

CREATE TABLE `db_empresa`.`clientes` (
  `id_clientes` INT NOT NULL AUTO_INCREMENT,
  `nit` VARCHAR(9) NULL,
  `nombres` VARCHAR(60) NULL,
  `apellidos` VARCHAR(60) NULL,
  `direccion` VARCHAR(100) NULL,
  `telefono` VARCHAR(8) NULL,
  PRIMARY KEY (`id_clientes`));

ALTER TABLE `db_empresa`.`clientes`
ADD COLUMN `fecha_nacimiento` DATE NULL AFTER `telefono`;

CREATE TABLE `db_empresa`.`puestos` (
  `id_puesto` SMALLINT NOT NULL,
  `puesto` VARCHAR(45) NULL,
  PRIMARY KEY (`id_puesto`));

CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `nombres` varchar(60) DEFAULT NULL,
  `apellidos` varchar(60) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(8) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_puesto` smallint DEFAULT NULL,
  PRIMARY KEY (`idempleados`),
  KEY `id_puestos_puesto_empleados_idx` (`id_puesto`),
  CONSTRAINT `id_puestos_puesto_empleados` FOREIGN KEY (`id_puesto`) REFERENCES `puestos` (`id_puesto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci



#creacion de usuario
#nombre : usr_empresa
#pass : empres@1234


SELECT * FROM clientes;

insert into clientes (nit, nombres, apellidos, direccion, telefono, fecha_nacimiento)
values ("1584', 'Zuhey', Ramirez', 'Guatemala', '1234, '2002- 04 -21");

INSERT INTO empleados (codigo, nombres, apellidos, direccion, telefono, fecha_nacimiento, id_puesto)
VALUES("Z", 'Elsa', 'Lopez', 'Guatemala', '321', '1995-10-9',7777)

update empleados set codigo = 'Z' nombres='Elsa' , Apellidos = 'Lopez'
where id_empleado=;

update empleados set telefono = '321'
where id_empleado=3;

delete from empleados where idempleado = 3;

INSERT INTO empleados (codigo, nombres, apellidos, direccion, telefono, fecha_nacimiento, id_puesto)
VALUES('Z', 'Elsa', 'Lopen Guatemala', '321', '1995-10-09',7777);

select e.id empleado,e.cod1go,e.nombres, e.apellidos,e.direccion,e.teletono,e.fecha_nacimlento
from empleados as e inner join puestos as p on e.id_puesto = P. id_puesto;
