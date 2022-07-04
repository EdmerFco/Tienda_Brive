Create  procedure Crear_Almacen
(
@fecha date,
@impuesto decimal,
@total decimal, 
@estadeo varchar(30),
@idUsuario int,
@idArtuculo int
)
as 
begin
insert into almacen(fecha,impuesto ,total, estadeo ,idUsuario ,idArtuculo)
values (@fecha,@impuesto ,@total, @estadeo ,@idUsuario,@idArtuculo)
end 

 exec Crear_Almacen '2022-06-30',0.2,4000, 'En Venta', 3,2
select * from Venta 

create procedure una_Almacen
(
@id int
)
as 
begin 
Select * from almacen
where idAlmacen = @id;
end 
go 

exec unauna_Almacen1

Create procedure Consultar_Alamcen
as begin
select * from almacen
end 
go 


Create procedure Actualizar_Alamcen
(
@id int,
@fecha date,
@impuesto decimal,
@total decimal, 
@estadeo varchar(30),
@idUsuario int,
@idArtuculo int
)
as 
begin 
update almacen set 
fecha      = @fecha, 
impuesto  = @impuesto,
Total      = @Total,
estadeo     = @estadeo,
idUsuario = @idUsuario,
idArtuculo = @idArtuculo
where idAlmacen= @id;
end


Create procedure Eliminar_Almacen
(
@id int
)
as begin 
Delete from almacen 
where idAlmacen = @id
end
go

