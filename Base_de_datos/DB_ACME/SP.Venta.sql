Create  procedure Crear_Venta
(

@fecha date, 
@impuestos decimal,
@Total decimal,
@Estado varchar(60),
@IdSucursal int,
@idUsuario int
)
as 
begin
insert into Venta(fecha, impuestos,Total ,Estado ,IdSucursal,idUsuario)
values (@fecha, @impuestos,@Total ,@Estado ,@IdSucursal,@idUsuario)
end 

 
select * from Venta 

create procedure una_Venta
(
@id int
)
as 
begin 
Select * from Venta
where idVenta = @id;
end 
go 

exec una_Categoria 1

Create procedure Consultar_Venta
as begin
select * from Venta
end 
go 
Exec Consultar_Categorias

Create procedure Actualizar_Venta
(
@id int,
@fecha date, 
@impuestos decimal,
@Total decimal,
@Estado varchar(60),
@IdSucursal int,
@idUsuario int
)
as 
begin 
update Venta set 
fecha      = @fecha, 
impuestos  = @impuestos,
Total      = @Total,
Estado     = @Estado,
IdSucursal = @IdSucursal,
idUsuario  = @idUsuario
where idVenta= @id;
end


Create procedure Eliminar_Venta
(
@id int
)
as begin 
Delete from Venta 
where idVenta = @id
end
go

