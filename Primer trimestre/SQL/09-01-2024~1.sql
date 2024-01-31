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