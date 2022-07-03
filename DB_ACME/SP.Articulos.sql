Create  procedure Crear_Articulos
(
@codigo nchar(10),
@nombre varchar(100) , 
@Precio_Venta decimal,
@Estado varchar(60),
@idCategoria int 
)
as 
begin
insert into Articulo(codigo,nombre, Precio_Venta,Estado , idCategoria) 
values (@codigo,@nombre, @Precio_Venta,@Estado , @idCategoria)
end 

exec Crear_Articulos 123,'barriatas',25,'Tienda',2
select * from Articulo 

create procedure una_Articulo
(
@id int
)
as 
begin 
Select * from Articulo
where idArticulo = @id;
end 
go 

exec una_Usuario 2

alter procedure Consultar_Articulo
as begin
select * from Articulo
end 
go 
Exec Consultar_Articulo

Create procedure ActualizarArticulo
(
@id int,
@codigo nchar(10),
@nombre varchar(100) , 
@Precio_Venta decimal,
@Estado varchar(60),
@idCategoria int 
)
as 
begin 
update Articulo set 
 codigo = @codigo,
 nombre = @nombre, 
 Precio_Venta = @Precio_Venta,
 Estado = @Estado, 
 idCategoria = @idCategoria 
where idArticulo = @id;
end

Exec ActualizarArticulo 2,124,'Barritas Fresa',25,'Tienda',2

Create procedure Eliminar_Articulo
(
@id int
)
as begin 
Delete from Articulo 
where idArticulo = @id
end
go

exec Eliminar_Articulo 1
