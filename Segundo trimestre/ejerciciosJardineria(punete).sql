--1. Muestra la ciudad y el codigo postal de las oficinas de España.
select ciudad Ciudad, codigo_postal "Código postal" from oficina where pais = 'España';
--2. Obtener el nombre y apellidos del jefe de la empresa.
select nombre Nombre, apellido1 || ' ' || apellido2 Apellidos from empleado where codigo_jefe is null;
--3. Mostrar el nombre y cargo de los empleados que no sean directores de oficina.
select nombre Nombre, puesto Cargo from empleado where puesto <> 'Director Oficina';
--4. Muestra el número de empleados que hay en la empresa.
select count(*) NºEmpleados from empleado;
--5. Muestra el número de clientes norteamericanos.
select count(*) "Clientes norteamericanos" from cliente where pais = 'USA';
--6. Número de clientes de cada país.
select pais, count(*) from cliente group by pais;
--7. Muestra el nombre del cliente y el nombre de su representante de ventas (si lo tiene).
select cliente.nombre_cliente "Nombre cliente", empleado.nombre "Nombre representante" from cliente join empleado on cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado;
--8. Nombre de los clientes que hayan hecho un pago en 2007.
select cliente.nombre_cliente "Nombre del cliente", pago.fecha_pago "Fecha del pago" from pago join cliente on pago.codigo_cliente = cliente.codigo_cliente where extract(year from pago.fecha_pago) = 2007;
--9. Los posibles estados de un pedido.
select distinct(estado) from pedido;
--10. Muestra el número de pedido, el nombre del cliente, la fecha de entrega y la fecha requerida  de los pedidos que no han sido entregados a tiempo.
select pedido.codigo_pedido "Código de pedido", cliente.nombre_cliente "Nombre del cliente", pedido.fecha_entrega "Fecha de entrega", pedido.fecha_esperada "Fecha esperada" from pedido join cliente on pedido.codigo_cliente = cliente.codigo_cliente where pedido.fecha_entrega > pedido.fecha_esperada;
--11. Muestra el código, nombre y gama de los productos que nunca se han pedido (detalle pedidos).
select producto.codigo_producto "Código de producto", producto.nombre "Nombre producto", producto.gama "Gama producto" from detalle_pedido right join producto on detalle_pedido.codigo_producto = producto.codigo_producto where codigo_pedido is null;
--12. Muestra el nombre y apellidos de los empleados que trabajan en Barcelona.
select empleado.nombre "Nombre empleado", empleado.apellido1 || empleado.apellido2 Apellidos from empleado join oficina on empleado.codigo_oficina = oficina.codigo_oficina where oficina.region = 'Barcelona';


--13. Muestra el código y la cantidad de veces que se ha pedido un producto al menos una vez.


--14. Muestra el nombre de los clientes de Miami que han realizado algún pedido.
select cliente.nombre_cliente "Nombre del cliente", cliente.region Ciudad, pedido.estado "Estado del pedido" from cliente join pedido on cliente.codigo_cliente = pedido.codigo_cliente where pedido.estado = 'Rechazado' and cliente.region = 'Miami';
--15. Mostrar el precio final de cada pedido.
select codigo_pedido "Código del pedido", sum((cantidad*precio_unidad)) || '€' "Precio final" from detalle_pedido group by codigo_pedido;
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