Create  procedure Crear_Categorias
(
@nombre varchar(100),
@descripcion Varchar(100), 
@estado varchar(60)
)
as 
begin
insert into Categorias(nombre, descripcion , estado) 
values (@nombre, @descripcion,@Estado)
end 

exec Crear_Categorias 'Galletas', 'Galletas marinela','En la venta' 
select * from Categorias 

create procedure una_Categoria
(
@id int
)
as 
begin 
Select * from Categorias
where idCategorias = @id;
end 
go 

exec una_Categoria 1

Create procedure Consultar_Categorias
as begin
select * from Categorias
end 
go 
Exec Consultar_Categorias

Create procedure Actualizar_Categorias
(
@id int,
@nombre varchar(100),
@descripcion Varchar(100), 
@estado varchar(60)
)
as 
begin 
update Categorias set 
nombre = @nombre,
descripcion = @descripcion,
estado = @estado
where idCategorias= @id;
end

Exec Actualizar_Categorias 2,'Refrescos','Refrescos de cocacola', 'baja'

Create procedure Eliminar_Categoria 
(
@id int
)
as begin 
Delete from Categorias 
where idCategorias = @id
end
go

exec Eliminar_Categoria 1