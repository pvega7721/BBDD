--Ejercicios select2

--Se va a hacer un aumento de sueldo de los PORTEROS. Obt�n el nombre, apellido y el nuevo salario de los PORTEROS si se aumenta 
--un 10% el que tienen actualmente. La lista debe estar ordenada alfab�ticamente por los apellidos.
select nombre, apellidos, salario+(salario*0.10) "Nuevo Salario" from futbolistas where posicion = 'PORTERO' order by apellidos;

--concatenacion
select 'lo que sea ' || salario from futbolistas;
select apellidos || ' , ' || nombre from futbolistas;

--metodos
select initcap(apellidos || ' , ' || nombre) "Futbolista" from futbolistas;

--Devuelve en una �nica columna el nombre del futbolista seguido de la palabra �es� y a continuaci�n la
--posici�n que ocupa. La columna debe llamarse �Posiciones�.
select nombre || ' es ' || posicion "Posiciones" from futbolistas;

--Queremos saber todos los datos de los futbolistas que ganen m�s de 150.000 euros y sean defensas.
select * from futbolistas where salario > 150000 and posicion='DEFENSA';

--Realiza una consulta que te devuelva los campos Nombre, Salario, Salario bruto terminado en la palabra �euros�
--y llamando a esa columna �Salario bruto�.

select nombre, salario, (salario*1.5) || ' euros' "Salario Bruto"  from futbolistas;

select initcap(nombre), salario, (salario*1.5) || ' euros' "Salario Bruto"  
     from futbolistas 
     where posicion= 'MEDIOCENTRO' 
     order by nombre;
     
--�Y si quiero que se compare posicion en minuscula?
select initcap(nombre), salario, (salario*1.5) || ' euros' "Salario Bruto"  
     from futbolistas 
     where lower(posicion)= 'mediocentro' 
     order by nombre;
     
/*Realiza las siguientes operaciones utilizando funciones num�ricas:
. Calcula el valor absoluto de -10.
. Obt�n el exponente en base e de 4.
. Redondea el n�mero 15,3 a 16.
. Redondea el n�mero anterior (15,3) a 15.
. Calcula el resto de 15 entre 3 (15/3).
. Eleva 15 al exponente 2 (15^2).*/

select abs(-10) from dual;
select exp(4) from dual;
select ceil(15.3) from dual;
select floor(5.3) from dual;
select mod(15,3) from dual;
select power(15,2) from dual;

/*1. Redondea 15,789 con un decimal.
. Obt�n la ra�z cuadrada de 128.
. Trunca 15,789 a 1 decimal.
. Trunca 15,789 para dejarlo sin
decimales (15).
. Trunca 157,89 para dejarlo en 100.
. Obt�n el signo de -15 (es decir -1).*/

select round(15.789, 1) from dual;
select sqrt(128) from dual;
select trunc(15.789, 1) from dual;
select trunc(15.789, 0) from dual;
select trunc(57.89, -2) from dual;
select sign(-15) from dual;

/*Realiza las siguientes peticiones:
1. �Cu�l es el car�cter 80 en ASCII?
. Obt�n el valor ASCII de la letra H.
. Devuelve el nombre y los apellidos en una �nica columna de los futbolistas cuya posici�n sea DEFENSA. 
El nombre de estar completamente en may�sculas y los apellidos en min�sculas.
. Obt�n todas las posiciones posibles (no repetidas) con la primera letra en may�sculas y el resto en
min�scula) ordenadas alfabet.
. Devuelve los nombres de los futbolistas del EQUIPO A con el siguiente formato: --AAA, siendo
AAA las tres primeras letras del nombre. Ej.: --PED, --LUI, etc.*/

select chr(80) from dual;
select ascii('H') from dual;
select concat(nombre,concat(' ',apellidos)) from futbolistas where posicion= 'DEFENSA';
select distinct initcap(posicion) from futbolistas order by initcap(posicion);
-- ASI AVERIGUO EL ID DEL EQUIPO
-- select id from equipos where nombre ='EQUIPO A';
select lpad(substr(nombre,1,3),5,'--') from futbolistas 
     where id_equipo = (select id from equipos where nombre ='EQUIPO A');

/*6. Devuelve los nombres de los futbolistas del EQUIPO A con el siguiente formato: AAA--, siendo AAA las tres primeras 
letras del nombre. Ej.: PED--, LUI--, etc.
. Devuelve el nombre de los futbolistas sustituyendo �LUIS� por �L.�.*/

select rpad(substr(nombre,1,3),5,'--') from futbolistas 
     where id_equipo = (select id from equipos where nombre ='EQUIPO A');

select replace(nombre,nombre,substr(nombre,1,1)) from futbolistas;
select replace(nombre, 'LUIS', 'L') from futbolistas;

/*8. Queremos los apellidos de los futbolistas con tan solo 3 caracteres.
9. Devuelve el nombre de los futbolistas sustituyendo �LUIS� por �L.� y en otra columna el tama�o de
los apellidos (longitud de caract.).*/

select substr(apellidos,1,3) from futbolistas;
select replace(nombre, 'LUIS', 'L'), length(apellidos) from futbolistas;

-- uso de instr para buscar la letra E en los nombres.
select nombre, instr(nombre, 'E') from futbolistas;

-- queremos la segunda E
select nombre,instr(nombre, 'E')"Primera E", instr(nombre, 'E', ,2) "Segunda E" from futbolistas;

/*1. Obt�n en tres columnas independientes, el d�a, el mes y la fecha de hoy.
. Muestra por pantalla la fecha que ser� dentro de 6 meses utilizando ADD_MONTHS.
. Muestra el n�mero de meses que hay entre hoy y la fecha de nacimiento de todos los futbolistas.
. �Cu�l es el �ltimo d�a de este mes? Mu�stralo.
. �Qu� d�a ser� el pr�ximo lunes? Ponlo por pantalla mediante una petici�n.
. Muestra el d�a que era hace 4 d�as. �Y el d�a de ma�ana?*/

select extract(day from sysdate) "d�a", extract(month from sysdate) "mes", sysdate "fecha" from dual; 
select add_months(sysdate,6) from dual;
select floor(months_between(sysdate, FECHA_NACIMIENTO)) "MESES DE VIDA" from futbolistas;
select last_day(sysdate) from dual;
select next_day(sysdate, 'lunes') from dual;
select sysdate -4 "HACE 4 DIAS", sysdate+ "MA�ANA" from dual;

/*1. Convierte �1000.45� a un n�mero.
. Convierte �1000.45�� a un n�mero.
. Convierte �-$1000.45� a un n�mero.
. Muestra el d�a de hoy con los siguientes
formatos:
� 12/02/2021, 12/02/21, 12-feb-2021, 12 de febrero de 2021
. Convierte el ID de la tabla FUTBOLISTAS en un n�mero de tres cifras.
. Muestra todos los a�os de nacimiento de los futbolistas (solo el a�o, ej.: 1990, 1991, etc.).
Ord�nalos de menor a mayor a�o.*/
select to_number('1000.45','9999.99') from dual;
select to_number('1000.45�', '9999.99L') from dual;
select to_number('-$1000.45','S$9999.99') from dual;
select to_char(sysdate,'dd/mm/yyyy'), 
       sysdate, 
       to_char(sysdate, 'dd-mon-yyyy'), 
       to_char(sysdate, 'dd') || ' de ' || replace(to_char(sysdate,'month'),' ','') || ' de ' || to_char(sysdate, 'yyyy')
       from dual;
select to_number(substr(id,4,length(id)),'999') from futbolistas;
select to_char(fecha_nacimiento, 'yyyy') from futbolistas order by fecha_nacimiento;
--ejemplos
select to_date('01/' || to_char(sysdate, 'mm') || '/23') from dual; 

/*1. Utiliza la funci�n DECODE para mostrar, respecto de los EQUIPOS, el valor 1000k si el presupuesto es de 1000000,
2000k si el presupuesto es de 2000000, o 3000k si el presupuesto asciende a 3000000.*/

select decode(presupuesto, 1000000, '1000k',2000000,'2000k',3000000,'3000k','ok') "PRESUPUESTO" from equipos;









