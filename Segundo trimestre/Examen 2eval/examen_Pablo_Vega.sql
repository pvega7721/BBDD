--1.
select id ID, upper(nombre) Nombre, categoria, estado from ingredientes where estado = 'SOLIDO';
--2.
--select * from comandas where extract(day from fecha) = 'Martes';
--3.
select nombre || ' ' ||  length(nombre) "Nombre más largo" from ingredientes where length(nombre) = (select max(length(nombre)) from ingredientes);
--4.
--5.
select round(avg(precio),2) from platos;
--6.
select replace(upper(nombre), ' ', '') Nombre, localidad Localidad from clientes;
--7.
select nombre "Plato más caro" from platos where precio = (select(max(precio)) from platos);
--8.
select ingredientes.nombre Nombre, ingredientes_platos.cantidad Cantidad from platos join ingredientes_platos on platos.id = ingredientes_platos.id_plato join ingredientes on ingredientes.id = ingredientes_platos.id_ingrediente where platos.nombre = 'Entrante bacalao en aceite';
--9.
select ingredientes.nombre from platos join ingredientes_platos on platos.id = ingredientes_platos.id_plato join ingredientes on ingredientes.id = ingredientes_platos.id_ingrediente where platos.nombre = 'Tarta de queso';
--10.
select count(*) from ingredientes join ingredientes_platos on ingredientes.id = ingredientes_platos.id_plato where ingredientes.categoria = 'LACTEO';
--11.
select nombre Nombre, categoria Categoría from ingredientes where nombre like 'Pi%';
--12.
select round(sum(precio),2) || '€' "Total vendido" from platos join comandas on platos.id = comandas.id_plato where comandas.id_plato =5;
--13.
select platos.nombre from platos join ingredientes_platos on platos.id = ingredientes_platos.id_plato join ingredientes on ingredientes.id = ingredientes_platos.id_ingrediente where ingredientes.nombre = 'Aceite de oliva virgen extra';
--14.

--15.
select platos.nombre from platos join comandas on platos.id = comandas.id_plato where comandas.fecha = '01-03-2021' and hora = '21:16';
--16.
--select * from platos join comandas on platos.id = comandas.id_plato; where comandas.fecha < ;
--count(*)
--17.
select nombre from platos where precio > 4 and tiempo_preparacion<15;
--18.
select count(*) from comandas where estado = 'SERVIDO' and hora between '21:20' and '21:50' and mesa = 1;
--19.
select clientes.nombre from clientes join comandas on clientes.id = comandas.id_cliente where comandas.estado = 'DEVUELTO';
--20.
--select categoria from ingredientes where nombre = 'Perejil';
--select nombre, length(categoria) from ingredientes where length(categoria)= (select min(length(categoria))from ingredientes);
--21.
--22.
--23.
--24.
select nombre Nombre from ingredientes where nombre not like 'A%' and nombre not like 'E%' and nombre not like 'I%' and nombre not like 'O%' and nombre not like 'U%' and estado = 'LIQUIDO';
--25.
select substr(trim(upper(nombre)),0,5) from clientes where telefono like '%333%';
--26.
--select * from ingredientes_platos where cantidad = (select max(cantidad) from ingredientes);
--select * from platos;
--27.
select distinct(platos.nombre) from comandas join platos on comandas.id_plato = platos.id where comandas.estado = 'SERVIDO' and comandas.fecha = '01-03-2021' and comandas.hora between '21:00' and '21:30';
--28.
--select decode(nombre,nombre like 'Plato%',replace(nombre,'Plato','')) from platos;
--select replace(nombre,'Plato','') from platos;
--29.
select lower(nombre) from ingredientes where categoria = 'CONDIMENTO' and estado = 'SOLIDO';
--30.
select count(*) from comandas where hora between '21:00' and '21:10' and fecha = '01-03-2021';
--31.
select distinct categoria Categoría from ingredientes order by categoria desc;
--32.
select nombre Cliente, telefono Tfno, localidad Loc from clientes where localidad = 'Bormujos' and telefono not like '1%';