select * from futbolistas;
--Ejercicio1 
select nombre from futbolistas where salario = (select min(salario) from futbolistas where fecha_nacimiento between '01/01/1985' and '31/12/1990') and fecha_nacimiento between '01/01/1985' and '31/12/1990';
--Ejercicio2 
select nombre, apellidos from futbolistas where posicion != 'PORTERO' and apellidos like '%EZ';
--Ejercicio3
select id_equipo "id equipo", count(*) "Número de futbolistas", round(avg(salario),2) "Salario medio" from futbolistas group by id_equipo;