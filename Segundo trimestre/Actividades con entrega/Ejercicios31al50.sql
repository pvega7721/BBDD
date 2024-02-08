--31. Calcular el último dia del mes (fecha) del mes actual.
select last_day(sysdate) from dual;
--32. Calcular el último dia del mes (fecha) del mes actual, con horas, minutos y segundos.
select last_day(sysdate),'dd/mm/yyy HH24:MI:SS' "Mes contrato" from dual;
--33. Calcular en qué MES (cifras) se ha contratado cada empleado.
select extract(month from hiredate) from emp;
--34. Calcular cuanto debería haber cobrado cada empleado en su primer año de trabajo (desde la fecha de contrato hasta el 31 de diciembre de ese año).
select ename "Nombre",round(((to_date('3112'||to_char(hiredate,'yyyy'))-hiredate)/30),2)*sal "Cobro 1er año" from emp;
--35. Cuantos oficios distintos hay en la tabla de empleados.
select distinct job from emp;
select count(distinct job) from emp;
--36. Calcular el IRPF de cada empleado, teniendo en cuenta que para los 'CLERK' se les retiene un 15%, y a los 'ANALYST" un 20%. Al resto se les retiene un 19%.
select * from emp;
select ename,sal,job,decode(job,'CLERK',sal*0.15,'ANALYST',sal*0.20,sal*0.19) IRPF from emp;
--37. Efectuar una propuesta de aumento salarial: Para los empleados del Dept. 10 un 5%, Dept. 20 un 7%, Dept 30 un 8% y al resto un 3% del salario.
select * from emp;
select * from dept;
select ename,decode(deptno,10,sal*1.05,20,sal*1.07,30,sal*1.08,sal*1.03) "Aumento salarial" from emp;
--38. Listar los nombres de los empleados, identificando como 'Vendedor' si cobra comisión, y 'No vendedor' si no la cobra.
select ename, decode(comm,null,'No vendedor','Vendedor') from emp;
--39. Calcular cuánto se paga mensualmente a todos los empleados.
select sum(sal) "Salario total" from emp;
--40. Calcular cuantos empleados hay.
select count(ename) "Número de empleados" from emp;
--41. Calcular el sueldo medio de todos los empleados.
select round(avg(sal),2) "Salario medio" from emp;
--42. Calcular la comisión media de todos los empleados (teniendo en cuenta aquellos que no tienen comisión).
select round(avg(nvl(comm,0)),2) "Comisión media" from emp;
--43. Calcular la comisión media de los empleados que sí tienen comisión.
select avg(comm) "Comisión media" from emp where comm is not null;
--44. Calcular la suma de los sueldos de los empleados del Departamento 20.
select sum(sal) from emp where deptno = 20;
--45. Calcular el sueldo medio de los empleados que pertenezcan al Dept 10 o 30.
select round(avg(sal),2) from emp where deptno = 10 or deptno = 30;
--46. Calcular la suma de sueldos que se pagan en cada uno de los departamentos 10 y 30 (por separado).
select sum(sal) from emp where deptno = 10 union
select sum(sal) from emp where deptno = 30;
--47. Calcular cuantos empleados se han contratado cada año.
SELECT extract(year from hiredate) "Año de contratación", COUNT(*) "Empleados contratados" FROM emp GROUP BY extract(year from hiredate);
--48. Calcular el sueldo máximo y mínimo de cada departamento.
select deptno, max(sal) "Máximo salario", min(sal) "Mínmo salario" from emp group by deptno;
--49. Calcular cuanto se gana de media por cada oficio. Redondear a 2 decimales.
select job, round(avg(sal)) "Salario medio" from emp group by job;
--50. Cuántos dias de vacaciones correspondieron a cada empleado el primer año de trabajo (contando 1 día por semana entera trabajada).
select ename "Nombre", floor((to_date('3112' || to_char(hiredate,'yyyy'))-hiredate)/7) "Días de vacaciones" from emp;