Alter  procedure Crear_Articulos
(
@codigo nchar(10),
@nombre varchar(100) , 
@Precio_Venta decimal,
@idCategoria int, 
@cantidad int
)
as 
begin
insert into Articulo(codigo,nombre, Precio_Venta, idCategoria, Cantidad) 
values (@codigo,@nombre, @Precio_Venta , @idCategoria, @cantidad)
end 

exec Crear_Articulos 123,'barriatas',25,1, 10
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

exec una_Articulo 2

create procedure Consultar_Articulo
as begin
select * from Articulo
end 
go 
Exec Consultar_Articulo

alter procedure ActualizarArticulo
(
@id int,
@codigo nchar(10),
@nombre varchar(100) , 
@Precio_Venta decimal,
@idCategoria int,
@idSocursal int,
@Cantidad int

)
as 
begin 
update Articulo set 
 codigo = @codigo,
 nombre = @nombre, 
 Precio_Venta = @Precio_Venta,
 idCategoria = @idCategoria,
 idSocursal = @idSocursal,
 Cantidad = @Cantidad

where idArticulo = @id;
end

Exec ActualizarArticulo 5,12,'Barritas Piña',25,1, 2,10

select * from Articulo
Create procedure Eliminar_Articulo
(
@id int
)
as begin 
Delete from Articulo 
where idArticulo = @id
end
go

exec Eliminar_Articulo 4
