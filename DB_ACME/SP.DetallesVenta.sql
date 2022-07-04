

create  procedure Crear_Detalle_Venta
(
 
@cantidad int,
@precio decimal,
@descuento decimal,
@idVenta int,
@idArticulo int
)
as 
begin
insert into Detalle_Venta( cantidad,precio,descuento,idVenta ,idArticulo) 
values ( @cantidad,@precio,@descuento,@idVenta ,@idArticulo)
end 

exec Crear_Detalle_Venta 2,25,0,1,2
select * from Detalle_Venta 

create procedure una_Detalle_Venta
(
@id int
)
as 
begin 
Select * from Detalle_Venta
where iddetalle_Venta = @id;
end 
go 

exec una_Detalle_Venta

Create procedure Consultar_Detalle_Venta
as begin
select * from Detalle_Venta
end 
go 
Exec Consultar_Detalle_Venta

Create procedure Actualizar_Detalle_Venta
(
@id int,
@iddetalle_Venta int, 
@cantidad int,
@precio decimal,
@descuento decimal,
@idVenta int,
@idArticulo int
)
as 
begin 
update Detalle_Venta set 
cantidad = @cantidad,
precio = @precio,
descuento = @descuento,
idVenta = @idVenta,
idArticulo = @idArticulo
where iddetalle_Venta= @id;
end

Exec Actualizar_Categorias 2,'Refrescos','Refrescos de cocacola', 'baja'

Create procedure Eliminar_Detalle_Venta
(
@id int
)
as begin 
Delete from Detalle_Venta 
where iddetalle_Venta = @id
end
go

exec Eliminar_Detalle_Venta 1
