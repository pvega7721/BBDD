--Ejercicio 1
--Obtén el nombre de todos los futbolistas de la base de datos.
select nombre from futbolistas;
--Ahora queremos saber la posición que ocupan estos futbolistas (aunque se repitan los valores).
select posicion from futbolistas;
--Se quiere saber las posiciones existentes por lo que se requiere la posición de los futbolistas sin que se repitan.
select distinct posicion from futbolistas;

--Ejercicio 2
--Obtén todas las posiciones posibles (diferentes) de los futbolistas bajo el encabezado "Demarcaciones".
select distinct posicion "Demarcaciones" from futbolistas;
--Muestra todos los datos almacenados de todos los futbolistas.
select * from futbolistas;
/*Se quieren todos los datos de los futbolistas pero con los siguientes alias:
-id
-nombre
-apellidos
-fecha de nacimiento
-posición
-salario actual
-identificador equipo actual
*/
select 
    ID "id",
    nombre "nombre",
    apellidos "apellidos",
    fecha_nacimiento "fecha de nacimiento",
    posicion "posición",
    salario "salario actual",
    id_equipo "identificador equipo actual"
from futbolistas;
select * from equipos, futbolistas where id_equipo = equipos.id;



--9/01/2024
--Explicación
select id from equipos;
select equipos.id from equipos;
select id from equipos e;
select e.id from equipos; --IMPORTANTE
select e.id from equipos e;
select id from equipos;

-- Ejercicio3
select apellidos 
    from futbolistas F
    where posicion = 'DEFENSA';
select id, nombre from equipos, futbolistas;
/*
--OBLIGATORIO
select COLUMNAS from TABLAS.
--OPCIONALES
select COLUMNAS
FROM TABLAS
WHERE CONDICIONES
ORDER BY nombre_columnas;
*/
select nombre, apellidos, salario
    from futbolistas
    order by nombre desc;
update futbolistas 
    set apellidos='GALVEZ'
    where nombre='PABLO';
select nombre, apellidos, salario
    from futbolistas
    order by apellidos desc, salario desc;
select nombre, apellidos, salario
    from futbolistas
    order by 2 desc, 3 desc;
select nombre, fecha_nacimiento from futbolistas;
select nombre, fecha_nacimiento
    from futbolistas
    order by fecha_nacimiento desc;
--Ejercicio4
select apellidos
    from futbolistas
    where posicion = 'DEFENSA'
    order by apellidos desc;
--Ejercicio5
select * 
    from futbolistas 
    order by posicion asc, apellidos asc;
/*
select (4+4)*3 || 'a' from dual;
select sysdate from dual;
select to_char (sysdate,'dd/mm/yy hh:mi:ss') from dual;
select salario || '€' from futbolistas;
*/
select nombre form futbolistas where salario2023 = salario2024;
select nombre 
    from futbolistas 
    where nombre like '_E%';
SELECT COUNT(NOMBRE) FROM FUTBOLISTAS;

--Ejercicio 6
select nombre 
    from futbolistas 
    where salario  >150000;
select id 
    from futbolistas
    where apellidos = 'GOMEZ';
select apellidos
    from futbolistas
    where apellidos like 'G%';
select *
    from futbolistas
    where posicion = 'DEFENSA' or posicion = 'DELANTERO';
--otra opción
select *
    from futbolistas
    where posicion in ('DEFENSA', 'DELANTERO');
select nombre
    from futbolistas
    where salario between 100000 and 200000;
    
    
    
--15/01/2024
--Operador entre dos valores
select 4*(4+3)+null from dual;
--Operador entre campo y un valor
select presupuesto +50 from equipos;
--Operador entre dos campos
select presupuesto + presupuesto from equipos;

--Ejercicio7
select nombre, apellidos, salario*1.10 "nuevo salario"
    from futbolistas 
    where posicion = 'PORTERO'
    order by apellidos;

select 'lo que sea ' || 'lo que sea' from dual;
select 'lo que sea ' || salario from futbolistas;
--Escribir los apellidos en minuscula
select lower(apellidos) || ', ' || nombre from futbolistas;

--Ejercicio8
select nombre || ' es ' || posicion "Posiciones" from futbolistas;

--Ejercicio9
select * from futbolistas where salario > 150000 and posicion = 'DEFENSA';

--Ejercicio10
select apellidos from futbolistas where apellidos like 'A%S%';

--Ejercicio11
select nombre, salario, salario*1.5 || ' euros' "Salario bruto"
    from futbolistas;
    
--Ejercicio11 ampliado
select initcap(nombre), salario, salario*1.5 || ' euros' "Salario bruto"
    from futbolistas
    where lower(posicion) = 'mediocentro'
    order by nombre;

--Ejercicio12

--Ejercicio13
select round(15.789,1) from dual;
select sqrt(128) from dual;
select trunc(15.789,1) from dual;
select trunc(15.789) from dual;
select trunc(157.89,-2) from dual;
select sign(-15) from dual;


--16/01/2024
SELECT CHR(65) FROM DUAL;
SELECT CONCAT(CONCAT(NOMBRE,ESTADIO),PRESUPUESTO) FROM EQUIPOS;
select lpad('nombre',10,'-') from dual;
select replace(nombre, 'QUI', 'KI') from equipos;
select replace(nombre,'E','-') from futbolistas;
select substr(nombre,7,4) from futbolistas;
select nombre from futbolistas;
select length(nombre) from futbolistas;
select nombre, instr(nombre,'E') "Primera E",
    instr(nombre, 'E',1,2) "Segunda E",
    instr(nombre,'E',5,1) "Trampa"
    from futbolistas;
select instr('la b no la d' ,'a',-1) from dual;


--22/01/2024
select to_number('75.83€','99.99L')*5+54-salario from futbolistas;
select to_char(sysdate, 'hh:mm') from dual;
select sysdate from dual;
select to_date('01/' || to_char(sysdate,'mm') || '/23') from dual;
--Ejercicio16
--1
select to_number('1000.45','9999.99') from dual;
--2
select to_number('1000.45€','9999.99L') from dual;
--3
select to_number('-$1000.45','s$9999.99') from dual;
--4
select to_char(sysdate,'dd/mm/yyy'),
    sysdate,
    to_char(sysdate,'dd-mon-yyyy'),
    to_char(sysdate,'dd') || ' de ' || replace(to_char(sysdate,'month'),' ','') || ' de ' || to_char(sysdate,'yyyy')
    from dual;
--5
select to_number(substr(id,4,length(id)),'999') from futbolistas;
--6
select to_char(fecha_nacimiento,'yyyy') from futbolistas order by fecha_nacimiento;


--23/01/2024
SELECT * FROM FUTBOLISTAS;
SELECT POSICION FROM FUTBOLISTAS GROUP BY POSICION HAVING POSICION LIKE 'DE%';
--QUÁNTOS FUTBOLISTAS SON DELANTEROS?
SELECT COUNT(ID) FROM FUTBOLISTAS WHERE POSICION = 'DELANTERO';
--DAME UNA LISTA CON EL NÚMERO DE FUTBOLISTAS QUE HAY POR POSICION
SELECT POSICION,COUNT(*) FROM FUTBOLISTAS GROUP BY POSICION;

SELECT COUNT(*),POSICION FROM FUTBOLISTAS 
--QUIERO SABER LA SIMA TOTAL DE LOS PRESUPUESTOS DE LOS EQUIPOS
SELECT * FORM EQUIPOS;
SELECT MIN (PRESUPUESTO) FROM EQUIPOS;
SELECT MAX (PRESUPUESTO) FROM EQUIPOS;
SELECT AVG (PRESUPUESTO) FROM EQUIPOS;
SELECT SUM(PRESUPUESTO) FROM EQUIPOS;
SELECT SUM(PRESUPUESTO) FROM EQUIPOS WHERE ID IN(1,2);
SELECT COUNT(*) FROM EQUIPOS;
SELECT COUNT(ID) FROM PARTIDOS;--6
SELECT COUNT(ARBITRO) FROM PARTIDOS;--5
SELECT COUNT(*) FROM PARTIDOS;--6
select * from futbolistas order by altura desc;
--EJERCICIO1
select nombre from futbolistas where altura = (select max(altura) from futbolistas);--SUBCONSULTA
--Indica los apellidos del futbolista más delgado
select min(peso) from futbolistas; --Peso:60kg y debes usar CONCAT ()
select concat('Peso: ',concat(min(peso),' Kg')) from futbolistas;
select apellidos, peso from futbolistas where peso = (select min(peso) from futbolistas);
--¿Cuántos futbolistas miden entre 1,75 y 1,82?
select count(*) from futbolistas where altura between 175 and 182;
--¿Cuál es la media de altura de los futbolistas con dos decimales?
select round(avg(altura),2) from futbolistas;
--Ejercicio2
--¿Cuál es el futbolista que cobra más dinero?
select nombre from futbolistas where salario = (select max(salario) from futbolistas);
select to_char(fecha_nacimiento,'yyyy') from futbolistas where salario = (select min(salario) from futbolistas);

--Ejercicio3
--Calcula la media del sueldo de los futbolistas (con dos decimales) agrupado por la posición que ocupan.
select posicion,trunc(avg(salario),2) from futbolistas group by posicion;
--Obtén el número de futbolistas en cada equipo.
select id_equipo equipo,count(*) total from futbolistas group by id_equipo;
--Obtén ahora el número de futbolistas de cada equipo cuyo ID sea 1 o 2.
select id_equipo, count(*) from futbolistas group by id_equipo having id_equipo =1 or id_equipo =2;
commit;

--29/01/2024
--Multitablas
--Ejercicio1 
select*from equipos,partidos;
select*from equipos,partidos
    where id_equipo_casa = equipos.id;

--Ejercicio2 
select * from futbolistas;
select * from equipos;
select futbolistas.nombre "Futbolistas", equipos.nombre "Equipo" 
    from futbolistas,equipos 
    where futbolistas.id_equipo = equipos.id;
    
select * from futbolistas cross join equipos;

select* from emp natural join dept;

--Ejercicio 6
select futbolistas.nombre, equipos.nombre from futbolistas join equipos on futbolistas.id_equipo = equipos.id;

select *
    from futbolistas
    inner join equipos
    on futbolistas.id_equipo = equipos.id;

insert into futbolistas values ('F11120','NOMBRE','APELL',null,'PORTERO',3000000,null,180,83);
insert into equipos values (4,'REAL BETIS BALOMPIE','BENITO VILLAMARIN',80000000);
select * from futbolistas;
select * from equipos;

select *
    from equipos
    left join futbolistas
    on futbolistas.id_equipo=equipos.id;
select *
    from equipos 
    right join equipos
    on futbolistas.id_equipo = equipos.id;
select *
    from equipos 
    full outer join futbolistas
    on futbolistas.id_equipo = equipos.id;
    
--Ejercicio8
select * from futbolistas f join equipos e on f.id_equipo = e.id where f.posicion = 'DEFENSA';
select futbolistas.nombre,futbolistas.apellidos,equipos.nombre 
    from futbolistas 
    join equipos 
    on futbolistas.id_equipo = equipos.id 
    where futbolistas.posicion = 'DEFENSA';    
--Ejercicio9
select futbolistas.nombre,futbolistas.apellidos,equipos.nombre 
    from futbolistas 
    left join equipos e
    on futbolistas.id_equipo = equipos.id 
    where futbolistas.posicion = 'DEFENSA'; 

--30/01/2024
select nombre, apellidos from futbolistas;-- 2024 hay 8 futbolistas
select nombre, apellidos from futbolistas_2023; --2023 hay 7 futbolistas
select nombre, apellidos from futbolistas union
select nombre, apellidos from futbolistas_2023; --hay 12 futbolistas

select nombre, apellidos from futbolistas intersect
select nombre, apellidos from futbolistas_2023; --hay 3 futbolistas

select nombre, apellidos from futbolistas minus
select nombre, apellidos from futbolistas_2023;--hay 12 futbolistas

select nombre, apellidos from futbolistas intersect
select nombre, apellidos from futbolistas_2023; --hay 3 futbolistas

select nombre, apellidos from futbolistas_2023 minus
select nombre, apellidos from futbolistas;--hay 4 futbolistas

--REPASO
--1. Indica el nombre y sueldo de los empleados que pertenezcan al departamento ubicado en Dallas.
select * from emp;
select * from dept;
select emp.ename, emp.sal from emp inner join dept on emp.deptno = dept.deptno where dept.loc = 'DALLAS'; 
--2. Indica el id, nombre y sueldo de los empleados que estén en departamentos donde haya otros compañeros 
--empleados con una letra 'u' en su nombre, y que además ganen sueldos mayores que la media de los sueldos 
--de la empresa.
select * from emp;
select empno,ename,sal from emp where deptno =(select deptno from emp where ename like '%U%') and sal > (select avg(sal) from emp);

--3. Devuelve el id del departamento, nombre y puesto de los empleados que pertenezcan al departamento Executive.
select dept.deptno, emp.ename, emp.job from emp join dept on dept.deptno = emp.deptno where dname='SALES';
--4. Muestra el nombre y salario de los empleados que tengan a KING como jefe directo.
select ename, sal from emp where mgr = (select empno from emp where ename = 'KING');
--4.1 Muestra el nombre y salario de los empleados que estén en el mismo departamento de KING.
select ename, sal from emp where deptno = (select deptno from emp where ename='KING') and mgr is not null;
--5. Devuelve el nombre y sueldo de los empleados que ganen más dinero que la media de la empresa, 
--ordenado por sueldo de mayor a menor.
select * from emp;
select ename, sal from emp where sal > (select avg(sal) from emp) order by sal desc;
-- 1. Mostrar los nombres de los empleados que tengan un salario mayor que el de JAMES.
select * from emp;
select ename from emp where sal > (select sal from emp where ename = 'JAMES');
-- 2. Mostrar los nombres de los empleados que trabajan en el mismo departamento que SMITH. Ordena el resultado.
select ename from emp where deptno = (select deptno from emp where ename = 'SMITH') and ename != 'SMITH' order by ename desc;
-- 5. Mostrar qué empleados del departamento donde trabaja FORD, ganan más que lo que gana JAMES.
 select * from emp where deptno = (select deptno from emp where ename = 'FORD') and sal > (select sal from emp where ename = 'FORD') and sal> (select sal from emp where ename = 'JAMES');
-- 7. ¿Cuántos empleados ganan menos que MILLER?
select count(*) from emp where sal < (select sal from emp where ename = 'MILLER');

select ename,round(months_between(to_date('31/12/' || to_char(hiredate, 'yyyy')),hiredate)*sal,2) "Cuantía a cobrar el primer año" from emp;