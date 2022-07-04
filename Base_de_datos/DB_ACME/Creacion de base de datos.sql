create database db_ACME

use db_ACME
create table Sucursales
(
 idSucursales int primary key not null,
 nombre varchar(100) not null, 
 ubicacion varchar(100) not null
);
create table Usuarios
(
idUsuarios int primary key not null,
Nombre_Usuario varchar(60) not null,
Direccion varchar(100),
Telefono nchar(10),
Clave nchar(10),
Estado varchar(30)
);

create table almacen
(
idAlmacen int primary key not null,
fecha date,
impuesto decimal,
total decimal, 
estadeo varchar(30),
idUsuario int foreign key references Usuarios(idUsuarios),
idArtuculo int foreign key references Articulo(idArticulo),
);
create table Articulo 
(
idArticulo int primary key not null,
codigo nchar(10) not null,
nombre varchar(100) not null, 
Precio_Venta decimal not null,
Estado varchar(60),
idCategoria int foreign key references Categorias(idCategorias)
);

create table Categorias
(
idCategorias int primary key not null,
nombre varchar(100) not null,
descripcion Varchar(100), 
estado varchar(60),

);

create table Detalle_Venta 
(
iddetalle_Venta int primary key not null, 
cantidad int,
precio decimal,
descuento decimal,
idVenta int foreign key references Venta(idVenta),
idArticulo int foreign key references Articulo(idArticulo)
);


Create table Venta
(
idVenta int primary key not null,
fecha date, 
impuestos decimal,
Total decimal,
Estado varchar(60),
IdSucursal int foreign key references  Sucursales(idSucursales),
idUsuario int foreign key references Usuarios(idUsuarios),

);