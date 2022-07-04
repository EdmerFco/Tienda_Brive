alter  procedure Crear_Usuarios
(
@nombre varchar(60),
@Direccion varchar(100),
@Telefono nchar(10),
@Clave nchar(10),
@Estado varchar(30)
)
as 
begin
insert into Usuarios (Nombre_Usuario,Direccion,Telefono,Clave,Estado) 
values (@nombre,@Direccion,@Telefono,@Clave,@Estado)
end 

exec Crear_Usuarios 'Francisco','Lago Ximilpan',4411512168,2804,'Provedor' 
select * from Usuarios 

create procedure una_Usuario
(
@id int
)
as 
begin 
Select * from Usuarios
where idUsuarios = @id;
end 
go 

exec una_Usuario 1

Create procedure Consultar_Usuario
as begin
select * from Usuarios
end 
go 
Exec Consultar_Usuario

Create procedure ActualizarUsuarios
(
@id int,
@nombre varchar(60),
@Direccion varchar(100),
@Telefono nchar(10),
@Clave nchar(10),
@Estado varchar(30)
)
as 
begin 
update Usuarios set 
Nombre_Usuario = @nombre,
Direccion = @Direccion,
Telefono = @Telefono,
Clave = @Clave,
Estado = @Estado
where idUsuarios= @id;
end

Exec ActualizarUsuarios 2,'Edgar','Queretaro', 4411512168, 2804,'Vendedor'

Create procedure Eliminar_usuario 
(
@id int
)
as begin 
Delete from Usuarios 
where idUsuarios = @id
end
go

exec Eliminar_usuario 1
