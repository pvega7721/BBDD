select * from futbolistas;

--Ejercicio1 
select initcap(nombre) "Nombre", 
concat((presupuesto-250000), ' euros') "2022-23", 
concat(presupuesto, ' euros') "2023-24", 
concat((presupuesto*1.1), ' euros') "2024-25"
from equipos order by presupuesto desc; 

--Ejercicio2
select lower(nombre) "Nombre", fecha_nacimiento, concat(round((salario/12),2), '€') "Salario mensual" from futbolistas order by salario desc;

--Ejercicio3
select concat(substr(nombre,1,3),  '-') || apellidos "NOM-APELLIDO" from futbolistas;

--Ejercicio4
select nvl(substr(nombre,1,(instr(nombre, ' ') -1)), nombre) "SOLO NOMBRE" from futbolistas;