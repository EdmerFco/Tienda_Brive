create  procedure Crear_Sucursal
(
@nombre varchar(100),
@ubicacion varchar(60)
)
as 
insert into Sucursales (nombre, ubicacion) values (@nombre,@ubicacion); 

exec Crear_Sucursal 'SucursalA', 'jalpan deserra'
select * from Sucursales 

create procedure una_Sucursal 
(
@id int
)
as 
begin 
Select * from Sucursales
where idSucursales = @id;
end 
go 

exec una_Sucursal 1

Create procedure Consultar_Socursal
as begin
select * from Sucursales
end 
go 
Exec Consultar_Socursal

Create procedure ActualizarSocursal 
(
@id int,
@nombre varchar(60),
@ubicacion varchar(60)
)
as 
begin 
update Sucursales set 
nombre = @nombre,
ubicacion = @ubicacion
where idSucursales= @id;
end

exec ActualizarSocursal 2,'SucursalB', 'Ciudad de mexico'
Create procedure Eliminar_Socursal 
(
@id int
)
as begin 
Delete from Sucursales 
where idSucursales = @id
end
go

exec Eliminar_Socursal 3
