USE ECOMMERCE;
GO
--Clientes

CREATE TABLE clientes(
id INT PRIMARY KEY IDENTITY(1,1),
tipo_documento VARCHAR(15) NOT NULL,
numero_documento VARCHAR(10) UNIQUE NOT NULL,
apellido_paterno VARCHAR(100) NOT NULL,
apellido_materno VARCHAR(100) NOT NULL,
nombre VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
direccion VARCHAR(255) NOT NULL,
ciudad VARCHAR(100) NOT NULL,
departamento VARCHAR(100) NOT NULL,
telefono VARCHAR(15) UNIQUE NOT NULL,
fecha_nacimiento date NOT NULL,
fecha_registro date  NOT NULL
);
Go
 
 --DROP TABLE CLIENTES
INSERT INTO clientes VALUES('DNI','08123345','RAMOS','SALAS','CARLOS','carlos.ramos@gmail.com','AvLima143','Lima','Lima','954609239','1990-10-12','2020-11-10')
INSERT INTO clientes VALUES('DNI','63457789','Pérez','González','Juan','juanpg@outlook.com','Av.Siempreviva123,Depto.2','Chiclayo','Lambayeque','987654321','1980-01-01','2023-11-01')
INSERT INTO clientes VALUES('DNI','87654324','López','Rodríguez','María','mrodriguezl@outlook.com','CalleSesamo456','Trujillo','LaLibertad','912345678','1992-05-15','2024-02-14')
INSERT INTO clientes VALUES('CE','112233445','García','Martínez','Pedro','pedromg@outlook.com','CalleLosNaranjos123','Talara','Piura','945678901','1975-11-22','2023-05-10')
INSERT INTO clientes VALUES('DNI','56677889','Sánchez','Ramírez','Ana','anaramirezs@gmail.com','Av.Principal456','Ancon','Lima','978901234','1988-03-08','2024-01-25')
INSERT INTO clientes VALUES('DNI','64466880','Gómez','Hernández','Luis','luisillogh@gmail.com','CalleSecundaria789','Lince','Lima','901234567','1995-09-12','2023-12-15')
INSERT INTO clientes VALUES('DNI','23577990','Díaz','Morales','Sofía','sdiazmorales@yahoo.com','Av.Central123','Arequipa','Arequipa','934567890','1982-07-18','2024-04-05')
INSERT INTO clientes VALUES('CE','446688001','Fernández','Castro','David','davidfc@yahoo.com','CalleLateral456','Huancayo','Junin','967890123','1991-02-25','2023-09-20')
INSERT INTO clientes VALUES('CE','446688005','Martinez','Garcia','Luis','luisgm@gmail.com','Calle901','Lima','Lima','987654327','1996-01-01','2022-01-07')
INSERT INTO clientes VALUES('DNI','89012345','Martínez','Ruiz','Laura','lauramartinezr@gmail.com','Av.Principal789','Carabayllo','Lima','990123456','1978-06-11','2024-03-10')
INSERT INTO clientes VALUES('DNI','90123456','Jiménez','López','Carlos','carjilo@gmail.com','CalleSecundaria123','Piura','Piura','923456789','1985-04-20','2023-12-28')
INSERT INTO clientes VALUES('DNI','71234567','Hernández','García','Andrea','andreagh@gmail.com','Av.Central456','Trujillo','LaLibertad','923456780','2002-01-01','2024-01-18')



---Tiendas
CREATE TABLE tiendas(
id INT PRIMARY KEY IDENTITY(1,1),
nombre VARCHAR(155) UNIQUE NOT NULL,
direccion VARCHAR(255) NOT NULL,
ciudad VARCHAR(100) NOT NULL,
departamento VARCHAR(100) NOT NULL
);
go

EXEC SP_HELP tiendas;
select * from tiendas
INSERT INTO tiendas VALUES ('Tienda Central','Calle Principal 123','Lince','Lima')
INSERT INTO tiendas VALUES ('Sucursal Norte','Av. Norte 456','Miraflores','Lima')
INSERT INTO tiendas VALUES ('Mega Store','Av. Patazca 946','La Victoria','Lima')
INSERT INTO tiendas VALUES ('Outlet del Centro','Calle Mora Cruz 456','Lima','Lima')
INSERT INTO tiendas VALUES ('Megatienda Sur','Av. Sur 123','La Perla','Callao')
INSERT INTO tiendas VALUES ('Tienda de Electrónica','Calle El Porvenir 789','Trujillo','La Libertad')
INSERT INTO tiendas VALUES ('Bazar del Hogar','Av. La Primavera 246','Moche','La Libertad')
INSERT INTO tiendas VALUES ('Tienda de Juegos','Calle Portales 456','Arequipa','Arequipa')
INSERT INTO tiendas VALUES ('Librería Central','Calle Esperanza 123','Chiclayo','Lambayeque')
INSERT INTO tiendas VALUES ('Casa popular','Calle Villanueva 456','Jose Leonardo Ortiz','Lambayeque')


--Pedidos
--drop table pedidos
CREATE TABLE pedidos(
id INT PRIMARY KEY IDENTITY(1,1),
cliente_id int NOT NULL,
tienda_id int NOT NULL,
fecha_pedido date not null,
total decimal(10,2)  not null,
estado varchar(50) not null,
CONSTRAINT FK_clientes_pedidos FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
go

select * from pedidos
select * from clientes
select * from tiendas

INSERT INTO pedidos VALUES ('1','1','2024-11-02','350.50','Despachado')
INSERT INTO pedidos VALUES ('3','1','2024-05-12','551.90','Entregado')
INSERT INTO pedidos VALUES ('2','3','2024-04-20','190','Entregado')
INSERT INTO pedidos VALUES ('4','2','2024-08-02','769.50','Entregado')
INSERT INTO pedidos VALUES ('6','5','2024-09-02','1550','Entregado')
INSERT INTO pedidos VALUES ('5','3','2024-03-02','99.90','Entregado')
INSERT INTO pedidos VALUES ('7','6','2024-11-20','780','Despachado')
INSERT INTO pedidos VALUES ('8','4','2024-05-02','2150.70','Entregado')
INSERT INTO pedidos VALUES ('10','8','2024-12-02','1350.20','Despachado')
INSERT INTO pedidos VALUES ('11','10','2024-12-09','970','Despachado')
INSERT INTO pedidos VALUES ('5','2','2024-12-07','1100','Despachado')
INSERT INTO pedidos VALUES ('7','3','2024-10-09','680.30','Entregado')
INSERT INTO pedidos VALUES ('10','5','2024-06-09','230','Entregado')
INSERT INTO pedidos VALUES ('1','6','2024-07-10','769','Entregado')
INSERT INTO pedidos VALUES ('4','6','2024-09-09','1345.90','Despachado')
INSERT INTO pedidos VALUES ('6','9','2024-10-20','3670','Entregado')
INSERT INTO pedidos VALUES ('11','9','2024-11-03','299.90','Despachado')
INSERT INTO pedidos VALUES ('12','1','2024-11-28','375.90','Despachado')
INSERT INTO pedidos VALUES ('3','1','2024-10-30','4570.40','Entregado')
INSERT INTO pedidos VALUES ('5','1','2024-12-10','950.20','Despachado')


--Pagos
-- table pagos
CREATE TABLE pagos(
id INT PRIMARY KEY IDENTITY(1,1),
pedido_id int NOT NULL,
importe decimal(10,2) NOT NULL,
fecha_pago date DEFAULT GETDATE() NOT NULL,
estado VARCHAR(55) NOT NULL,
CONSTRAINT FK_pedidos_pagos FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);
go

SELECT * FROM pagos
SELECT * FROM pedidos

INSERT INTO pagos VALUES ('1','350.50','2024-11-02','Confirmado')
INSERT INTO pagos VALUES ('2','551.90','2024-05-12','En proceso')
INSERT INTO pagos VALUES ('3','190.00','2024-04-20','Confirmado')
INSERT INTO pagos VALUES ('4','769.50','2024-08-02','Confirmado')
INSERT INTO pagos VALUES ('5','1550.00','2024-09-02','Confirmado')
INSERT INTO pagos VALUES ('6','99.90','2024-03-02','Confirmado')
INSERT INTO pagos VALUES ('7','780.00','2024-11-20','Confirmado')
INSERT INTO pagos VALUES ('8','2150.70','2024-05-02','Confirmado')
INSERT INTO pagos VALUES ('9','1350.20','2024-12-02','Confirmado')
INSERT INTO pagos VALUES ('10','970.00','2024-12-09','Rechazado')
INSERT INTO pagos VALUES ('11','1100.00','2024-12-07','En proceso')
INSERT INTO pagos VALUES ('12','680.30','2024-10-09','Confirmado')
INSERT INTO pagos VALUES ('13','230.00','2024-06-09','Confirmado')
INSERT INTO pagos VALUES ('14','769.00','2024-07-10','Confirmado')
INSERT INTO pagos VALUES ('15','1345.90','2024-09-09','Confirmado')
INSERT INTO pagos VALUES ('16','3670.00','2024-10-20','Confirmado')
INSERT INTO pagos VALUES ('17','299.90','2024-11-03','Confirmado')
INSERT INTO pagos VALUES ('18','375.90','2024-11-28','En proceso')
INSERT INTO pagos VALUES ('19','4570.40','2024-10-30','Confirmado')
INSERT INTO pagos VALUES ('20','950.20','2024-12-10','Rechazado')

select * from pagos



--Metodo pago
CREATE TABLE metodo_pago(
id INT PRIMARY KEY IDENTITY(1,1),
tipo varchar (55) NOT NULL
);
go

select * from metodo_pago
select * from pedidos
INSERT INTO metodo_pago VALUES('Tarjeta')
INSERT INTO metodo_pago VALUES('Yape/Plin')
INSERT INTO metodo_pago VALUES('Efectivo')
INSERT INTO metodo_pago VALUES('Bitcoin')
INSERT INTO metodo_pago VALUES('Transferencia')
INSERT INTO metodo_pago VALUES('Paypal')

