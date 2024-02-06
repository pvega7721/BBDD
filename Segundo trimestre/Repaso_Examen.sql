--Ejercicio1
Select nombre from futbolistas;
select posicion from futbolistas;
select distinct posicion from futbolistas;

--Ejercicio2
select distinct posicion "Demarcaciones" from futbolistas;
select * from futbolistas;

--Ejercicio3
select apellidos "Futbolista" from futbolistas f where posicion = 'DEFENSA';

--Ejercicio4
select apellidos from futbolistas where posicion = 'DEFENSA' order by apellidos desc;

--Ejercicio5
select * from futbolistas order by posicion, apellidos;

--Ejercicio6
select nombre from futbolistas where salario >150000;
select ID from futbolistas where apellidos = 'GOMEZ';
--                          Para usar % se escribe 'LIKE' no '='
select apellidos from futbolistas where apellidos LIKE 'G%';
select * from futbolistas where posicion = 'DELANTERO' or posicion = 'DEFENSA';
select nombre from futbolistas where salario between 100000 and 200000;

--Ejercicio7
select nombre, apellidos, (salario*1.1) "Nuevo salario" from futbolistas where posicion = 'PORTERO' order by apellidos;

--Ejercicio8
select nombre || ' es ' || posicion "Posiciones" from futbolistas;

--Ejercicio9
select * from futbolistas where salario > 150000 and posicion = 'DEFENSA';

--Ejercicio10
select apellidos from futbolistas where apellidos like 'G%E%';

--Ejercicio11
select nombre, salario, (salario*1.5) "Salario bruto" from futbolistas;

--Ejercicio12
select abs(-10) from dual;
select exp(4),3 from dual;
select ceil(15.3) from dual;
select floor(15.3) from dual;
select mod(15,3) from dual;
select power (15,2) from dual;

--Ejercicio13
select round(15.789,1) from dual;
select sqrt(128) from dual;
select trunc(15.789,1) from dual;
select trunc(15.789) from dual;
select trunc(157.89, -2) from dual;
select sign(-15) from dual;

--Ejercicio14
select chr(80) from dual;
select ascii('H') from dual;
--concat no permite añadir espacios entre columnas
select concat(upper(nombre), lower(apellidos)) from futbolistas where posicion = 'DEFENSA';
-- con || se pueden añadir espacios en medio de las columnas
select upper(nombre) || ' ' || lower(apellidos) from futbolistas where posicion = 'DEFENSA';
select distinct initcap(posicion) from futbolistas;
select concat('--',lpad(futbolistas.nombre, 3, ' ')) from futbolistas join equipos on futbolistas.ID_EQUIPO = equipos.id where equipos.nombre = 'EQUIPO A';
select concat(rpad(futbolistas.nombre,3,' '), '--') from futbolistas join equipos on futbolistas.ID_EQUIPO = equipos.id where equipos.nombre = 'EQUIPO A';
select replace(nombre,'LUIS','L') from futbolistas;
select substr(apellidos,1,3) from futbolistas;
select replace(nombre,'LUIS','L'), length(apellidos) from futbolistas;

--Ejercicio15
select extract(day from sysdate), extract(month from sysdate), sysdate from dual;
select add_months(sysdate,6) from dual;
select months_between(sysdate,fecha_nacimiento) from futbolistas;
select (last_day(sysdate)) from dual;
select next_day(sysdate,'LUNES') from dual;
select extract(day from (sysdate-4)) "Hace 4 días", extract(day from(sysdate+1)) "Día de mañana" from dual;

--Ejercicio16
select to_number(1000.45) from dual;
select to_number('1000.45€', '9999.99L') from dual;
select to_number('-$1000.45', '$9999.99') from dual;
select to_char(sysdate,'DD/MM/YYYY'), to_char(sysdate,'DD/MM/YY'), to_char(sysdate,'DD-MON-YYYY'), to_char(sysdate,'DD " de "MONTH"de" YYYY')  from dual;
select to_number(substr(id,2,length(id)-1),'99999') from futbolistas;
select extract(year from fecha_nacimiento) from futbolistas order by fecha_nacimiento;

--Ejercicio17
select decode(presupuesto,1000000,'1000K',2000000,'2000K',3000000,'3000K') from equipos;