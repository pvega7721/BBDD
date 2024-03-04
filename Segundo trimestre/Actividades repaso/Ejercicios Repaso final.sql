--1. �Cu�ntos clientes tienen por nombre de contacto Maria?
select count(*) from cliente where nombre_contacto like 'Maria';
--2. Devuelve la l�nea de direcci�n 1 de los clientes, sustituyendo C/ por la palabra CALLE, cuando sea necesario y la ciudad sea Fuenlabrada
select replace(linea_direccion1, 'C/', 'CALLE ') Direcci�n_1 from cliente where ciudad = 'Fuenlabrada';
--3. Indica el pa�s, con todas sus letras en may�sculas, que tiene m�s clientes
select upper(pais) from cliente group by pais having count(*) = (select max(count(*)) from cliente group by pais);
--4. Indica el nombre del cliente con todas las letras en min�sculas de aquellos cuyo fax termina en 16
select lower(nombre_cliente) from cliente where FAX like '%16';
--5. Se quiere sustituir todas las vocales por el caracter - en el nombre de contacto, y mostrarlo (tabla cliente)
select replace(lower(replace(lower(replace(lower(replace(lower(replace(lower(nombre_contacto), 'u', '-')), 'o', '-')), 'i', '-')), 'e', '-')), 'a', '-') from cliente;
--6. Devuelve en una columna el nombre de contacto, en otra el apellido de contacto 
--y en una tercera el n�mero de palabras que hay en el apellido del contacto en la tabla cliente 
--(se debe suponer que solo es posible 1 o 2 apellidos a lo sumo, separados por un espacio siempre).
select nombre_contacto,apellido_contacto,decode(instr(apellido_contacto,' '),0,'1','2') from cliente;
--7. Devuelve el nombre de los cliente junto al caracter : y el campo limite_credito de aquellos clientes cuyo l�mite de cr�dito est� entre 10000 y 50000. La cadena debe mostrarse en una �nica columna y terminar con la palabra "euros".
select nombre_cliente || ': ' || limite_credito || 'euros' from cliente where limite_credito between 10000 and 50000 order by limite_credito asc;
--8. Se quiere saber el nombre del empleado y el n�mero de clientes que representa como ventas, ordenados primero por el que tiene m�s clientes representados (de mayor a menor), y luego por el nombre del empleado en orden alfab�tico (A a Z).
select empleado.nombre "Nombre empleado", count(*) from cliente join empleado on empleado.codigo_empleado = cliente.codigo_empleado_rep_ventas group by empleado.nombre order by count(*) desc, empleado.nombre;
--9. �Cu�ntos c�digos postales de clientes tienen un 8 o un 9 entre sus cifras?
select count(*) from cliente where codigo_postal like '%8%' or codigo_postal like '%9%';
--10. Se quiere saber el nombre de aquellos clientes que no tienen l�nea de direcci�n 2, su ciudad es Madrid y su l�nea de direcci�n 1 acaba en 4
select nombre_cliente from cliente where linea_direccion2 is null and ciudad = 'Madrid' and linea_direccion1 like '%4';