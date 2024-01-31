--1. Obtener el nombre de todos los departamentos en minúsculas.
select lower(dname) from dept;
--2. Seleccionar todos los datos de la tabla empleados (todas las columnas).
select * from emp;
--3. Devuelve ename, job, sal y comm de los empleando usando los siguientes alias de columnas: nombre, puesto, salario y comisión.
select ENAME "nombre", JOB "puesto", SAL "salario", COMM "comisión" from emp;
--4. Calcula cuántas semanas completas (de lunes a domingo) ha trabajado cada empleado, y devuelve dicho valor y el nombre del empleado. El número de
select ename "Nombre", floor((sysdate-hiredate)/4) "NºSemanas trabajadas"from emp;
--5. Calcular el sueldo neto de cada empleado, y la retencion iRPF mensual, sabiendo que la retención es del 19% para el sueldo y de un 10% de la comisión, (redondear a 2 decimales). Si el empleado no tiene comisión, se debe mostrar el valor 0.
select ename "Nombre", round((sal-(sal*0.19)- nvl((comm*0.1),0)),2) "Salario neto", round(((sal*1.19)+ nvl((comm*0.1),0)),2) "Retención IRPF mensual" from emp;
--6. Hacer un listado de empleados (nombre y salario) con sueldo superior a 1000.
select ENAME "nombre", SAL "salario" from emp where SAL <1000;
--7. Hacer un listado de empleados (nombre, puesto, sueldo, comision) que tengan puesto igual a CLERK.
select ENAME "nombre", JOB "puesto", SAL "sueldo", COMM "comision" from emp where job = 'CLERK';
--8. Hacer un listado de empleados (nombre, puesto, sueldo, comision) que tengan puesto distinto a CLERK.
select ENAME "nombre", JOB "puesto", SAL "sueldo", COMM "comision" from emp where job != 'clerk';
--9. Hacer un listado de empleados (nombre, puesto, sueldo, comision) que tengan puesto distinto a CLERK y sueldo superior a 1500.
select ENAME "nombre", JOB "puesto", SAL "sueldo", COMM "comision" from emp where job != 'clerk' and sal > 1500;
--10. Hacer un listado de empleados (nombre, puesto, sueldo, comision) que tengan asignada comisión.
select ENAME "nombre", JOB "puesto", SAL "sueldo", COMM "comision" from emp where comm is not null;
--11. Hacer un listado de empleados (nombre, puesto, sueldo, comision) que NO tengan asignada comisión.
select ENAME "nombre", JOB "puesto", SAL "sueldo", COMM "comision" from emp where comm is null;
--12. Seleccionar los empleados cuyo nombre empieza por 'A'.
select ENAME "nombre" from emp where ename like 'A%';
--13. Seleccionar los empleados cuyo nombre tienen una A en cualquier posición.
select ename "nombre" from emp where ename like '%A%';
--14. Seleccionar los empleados cuyo nombre no contiene ninguna 'A'.
select ename "Nombre" from emp where ename not like '%A%';
--15. Seleccionar los empleados cuyo nombre empieza por una vocal.
select ename "Nombre" from emp where ename like 'A%' or ename like 'E%' or ename like 'I%' or ename like 'O%' or ename like 'U%';
--16. Seleccionar los empleados con sueldo entre 1000 y 2000 (ambos inclusive).
select ename "Nombre", sal "Sueldo" from emp where sal >999 and sal <2001;
--17. Seleccionar los empleados con sueldo igual a 1000, 2000, 3000, 4000 o 5000.
select ename "Nombre", sal "Sueldo" from emp where sal = 1000 or sal =2000 or sal = 3000 or sal =4000 or sal = 5000;
--18. Seleccionar los empleados cuyo nombre comienza por A,B,C,J,K,M.
select ename "Nombre" from emp where ename like 'A%' or ename like 'B%' or ename like 'C%' or ename like 'J%' or ename like 'K%' or ename like 'M%';
--19. Seleccionar los empleados cuyo sueldo es la 5000/2 + 500 o 5000-1000.
select ename "Nombre", sal "Sueldo" from emp where sal = (5000/2 +500) or sal = 5000-1000;
--20. Seleccionar los empleados cuyo sueldo es la 5000/2 + 500 ,5000-1000 o el salario máximo de todos los empleados.
select ename "Nombre", sal "Sueldo" from emp where sal = (5000/2 +500) or sal = 5000-1000 or sal =(select (max(sal)) from emp);
--21. Seleccionar nombre, sueldo y sueldo formateado (ej.: 1,000.00) de todos los empleados. Se puede usar las máscaras de to_number en to_char.
select ename "Nombre", sal "Sueldo", to_char(sal, '999,999.00') "Sueldo formateado" from emp; 
--22. Seleccionar nombre, sueldo y sueldo formateado con el simbolo 'Dólar' (ej.: $1,000.00) de todos los empleados. Se puede usar las máscaras de to_number en to_char.

--23. Seleccionar nombre, sueldo y sueldo formateado con el simbolo 'Euro' (ej.: 1,000.00€ de todos los empleados. Se puede usar las máscaras de to_number en to_char.

--24. Seleccionar la fecha del sistema (día, mes, año, horas (24):minutos:segundos).

--25. Seleccionar la fecha del sistema (nombre del día, día, nombre del mes, año, horas (24):minutos:segundos). No debe haber espacios sobrantes en el nombre del día o del mes.
select replace(to_char(sysdate,'DAY'),' '), 
    to_char(sysdate,'dd'),
   replace(to_char (sysdate,'month'),' '), 
    to_number(to_char(sysdate,'yyyy')),
    to_char(sysdate,'hh24:mi:ss') 
        from dual;
--26. Seleccionar la fecha del día 1 de enero de 2005, medíante una tira de caracteres y su máscara de formato (ej.: 01012021 sería el 1 de enero de 2021).

--27. Calcular el número de días vividos hasta hoy por una persona nacida el día 3 de julio de 1970.
select floor(sysdate-to_date('03/07/1970')) from dual;
--28. Calcular el número de segundos transcurridos desde la última medianoche (máscara 'sssss' en to_char).

--29. Calcular el número horas completas transcurridas desde la última medianoche.

--30. Calcular el número de meses transcurridos entre la fecha de contratación de cada empleado y hoy.
