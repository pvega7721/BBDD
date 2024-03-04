--1. Muestra la ciudad y el codigo postal de las oficinas de España.
select ciudad Ciudad, codigo_postal "Código postal" from oficina where pais = 'España';
--2. Obtener el nombre y apellidos del jefe de la empresa.
select nombre Nombre, apellido1 || ' ' || apellido2 Apellidos from empleado where codigo_jefe is null;
--3. Mostrar el nombre y cargo de los empleados que no sean directores de oficina.
select 
--4. Muestra el número de empleados que hay en la empresa.
--5. Muestra el número de clientes norteamericanos.
--6. Número de clientes de cada país.
--7. Muestra el nombre del cliente y el nombre de su representante de ventas (si lo tiene).
--8. Nombre de los clientes que hayan hecho un pago en 2007
--9. Los posibles estados de un pedido.
--10. Muestra el número de pedido, el nombre del cliente, la fecha de entrega y la fecha requerida  de los pedidos que no han sido entregados a tiempo.
--11. Muestra el código, nombre y gama de los productos que nunca se han pedido (detalle pedidos).
--12. Muestra el nombre y apellidos de los empleados que trabajan en Barcelona.
--13. Muestra el código y la cantidad de veces que se ha pedido un producto al menos una vez.
--14. Muestra el nombre de los clientes de Miami que han realizado algún pedido.
--15. Mostrar el precio final de cada pedido.
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