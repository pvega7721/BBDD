--1. Muestra la ciudad y el codigo postal de las oficinas de España.
select ciudad Ciudad, codigo_postal "Cod.Postal" from oficina where pais = 'España';
--2. Obtener el nombre y apellidos del jefe de la empresa.
select nombre Nombre, apellido1 || ' ' || apellido2 "Apellidos"  from empleado where codigo_jefe is null;
--3. Mostrar el nombre y cargo de los empleados que no sean directores de oficina.
select nombre Nombre, puesto Cargo from empleado where puesto != 'Director Oficina';
--4. Muestra el número de empleados que hay en la empresa.
select count(*) NºEmpleados from empleado;
--5. Muestra el número de clientes norteamericanos.
select count(*) "Empleados norteamericanos" from cliente where pais in('USA', 'Mexico', 'Canada');
--6. Número de clientes de cada país.
select pais, count(pais) from cliente group by pais;
--7. Muestra el nombre del cliente y el nombre de su representante de ventas (si lo tiene).
select empleado.nombre "Nombre empleado", cliente.nombre_cliente "Nombre cliente" from cliente join empleado on cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado;
--8. Nombre de los clientes que hayan hecho un pago en 2007
select distinct cliente.nombre_cliente "Nombre" from cliente join pago on cliente.codigo_cliente = pago.codigo_cliente where pago.fecha_pago between (select to_date('1/1/2007','dd/mm/yyyy') from dual) and (select to_date('31/12/2007','dd/mm/yyyy') from dual);
--9. Los posibles estados de un pedido.
select distinct(estado) from pedido;
--10. Muestra el número de pedido, el nombre del cliente, la fecha de entrega y la fecha requerida  de los pedidos que no han sido entregados a tiempo.
select pedido.codigo_pedido "Número de pedido", cliente.nombre_cliente "Nombre del cliente", pedido.fecha_esperada "Fecha requerida", pedido.fecha_entrega "Fecha de entrega" from pedido join cliente on pedido.codigo_cliente = cliente.codigo_cliente where fecha_entrega > fecha_esperada;
--11. Muestra el código, nombre y gama de los productos que nunca se han pedido (detalle pedidos).
select codigo_producto,nombre,gama from producto where codigo_producto not in(select distinct codigo_producto from detalle_pedido);
--12. Muestra el nombre y apellidos de los empleados que trabajan en Barcelona.
select nombre "Nombre", apellido1 || ' ' || apellido2 "Apellidos" from empleado join oficina on empleado.codigo_oficina = oficina.codigo_oficina where oficina.ciudad = 'Barcelona';
--13. Muestra el código y la cantidad de veces que se ha pedido un producto al menos una vez.
select codigo_producto Producto, sum(cantidad) "Veces que se ha pedido" from detalle_pedido group by codigo_producto;
--14. Muestra el nombre de los clientes de Miami que han realizado algún pedido.
select distinct(cliente.nombre_cliente) Nombre from cliente join pedido on cliente.codigo_cliente = pedido.codigo_cliente where ciudad = 'Miami';
--15. Mostrar el precio final de cada pedido.
select * from pedido;
select * from detalle_pedido;
--16. Mostrar lo que ha pagado cada cliente.
--17. Mostrar el numero de productos de cada gama.
--18. Mostrar el codigo de los pedidos donde se haya vendido el producto de la gama ‘Aromáticas’ mas caro.
--19. Mostrar el codigo de los pedidos donde se hayan vendido mas de 6 productos.
--20. Mostrar el codigo de los pedidos donde el precio del pedido sea superior a la media de todos los pedidos.
--21. Mostrar los datos de un empleado (nombre, apellidos, ciudad de la oficina) y lo mismo para su jefe (en la misma fila).
--22. Mostrar el codigo de pedido y su total en euros.
--23. Mostrar la información del pedido (codigo, fechapedido, fechaesperada, fechaentrega, nombre cliente y total en euros) ordenado por total de forma descendente.
--24. Devolverme la gama de productos mas vendida.
--25. Devolverme la gama de productos mas vendida.
--26. Muestra el pais(cliente) donde menos pedidos se hacen.