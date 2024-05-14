

select posicion from futbolistas group by posicion having posicion like 'DE%';

select sum(presupuesto) from equipos;
select sum(presupuesto) from equipos where id in (1,2);

select count(*) from equipos;
select avg(presupuesto) from equipos;
select max(presupuesto) from equipos;

-- cuantos futbolistas son delanteros?
select count(id) from futbolistas where posicion ='DELANTERO';

--dame una lista con el nº de futbolistas que hay por cada posicion
select posicion, count(id) from futbolistas group by posicion;

/*Ejercicio 1
Calcula:
• Obtén el nombre del futbolista más alto.*/
select nombre from futbolistas where altura = (select max(altura) from futbolistas); -- subconsulta

--• Indica los apellidos del futbolista más delgado.
select apellidos from futbolistas where peso =(select min(peso) from futbolistas);
-- que salga Peso: 60 kg y debes usar CONCAT
select concat(concat('Peso: ', min(peso)), ' kg') from futbolistas;

--• ¿Cuántos futbolistas miden entre 1,75 y 1,82?
select count(nombre) from futbolistas where altura between 175 and 182;

--• ¿Cuál es la media de altura de los futbolistas con dos decimales?
select trunc(avg(altura),2) from futbolistas;

--• ¿Cuál es la media de peso de los futbolistas con un decimal?
select trunc(avg(peso),1) from futbolistas;


/*Ejercicio 2
Calcula:
• ¿Cuál es el futbolista que cobra más dinero?*/
select nombre from futbolistas where salario =(select max(salario) from futbolistas);

--• ¿En qué año nació el futbolista que cobra menos dinero?
select to_char(fecha_nacimiento, 'yyyy') from futbolistas where salario=(select min(salario) from futbolistas);

/*Ejercicio 3
Calcula la media del sueldo de los futbolistas (con dos decimales) agrupado por la posición que ocupan.*/
select trunc(avg(salario),2), posicion from futbolistas group by posicion;
--Obtén el número de futbolistas en cada equipo.
select count(*) total, id_equipo from futbolistas group by id_equipo;
--Obtén ahora el número de futbolistas de cada equipo cuyo ID sea 1 o 2.
select id_equipo, count(*) from futbolistas group by id_equipo having id_equipo = 1 or id_equipo = 2;









