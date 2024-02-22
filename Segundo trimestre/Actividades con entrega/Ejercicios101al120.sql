--101. Listar las diferentes ciudades de la tabla sin repetición explícitamente (aunque no haya datos que se repitan).
select distinct loc Ciudad from dept;
--102. Listar el nombre de departamento y nombre de ciudad para los departamentos ubicados en  en New York y Dallas.
select dname "Nombre del departamento", loc Ciudad from dept where loc = 'NEW YORK' or loc = 'DALLAS';
--103. Seleccionar el nombre de los empleados y el nombre de la ciudad donde está el departamento al que pertenecen.
select emp.ename Nombre, loc Ciudad from emp join dept on emp.deptno = dept.deptno;
--104. Listar el nombre de los trabajadores, puesto, nombre del departamento y ciudad del departamento de aquellos que no son MANAGER.
select emp.ename Nombre, job Puesto, dname Departamento, loc Ciudad from emp join dept on emp.deptno = dept.deptno where job not like 'MANAGER';
--105. Listar el nombre de los trabajadores, puesto, nombre del departamento y ciudad del departamento de aquellos que no son ni ANALYST ni CLERK.
select emp.ename Nombre, job Puesto, dname Departamento, loc Ciudad from emp join dept on emp.deptno = dept.deptno where job not like 'ANALYST' and job not like 'CLERK';
--106. Seleccionar el nombre del empleado, código y nombre del departamento al que pertenecen los empleados.
select emp.ename "Empleado", dept.deptno "Cod.Departamento", dept.dname "Nombre Departamento" from emp join dept on emp.deptno = dept.deptno;
--107. Seleccionar el nombre de los empleados que trabajan en el departamento cuyo código es el más bajo de todos los existentes (utiliza subconsultas).
select ename from emp where deptno = (select min(deptno) from emp);
--108. Seleccionar nombre de empleado, nombre de departamento y ubicación del departamento para los empleados que tienen comisión.
select emp.ename "Nombre empleado", dept.dname Departamento, dept.loc "Ubicación del departamento" from emp join dept on dept.deptno = emp.deptno where emp.comm is not null and emp.comm >0;
--109. Seleccionar nombre de empleado, nombre de departamento y localización, para los empleados que no tienen comisión (o esta vale cero).
select emp.ename "Nombre empleado", dept.dname Departamento, dept.loc "Localización" from emp join dept on dept.deptno = emp.deptno where emp.comm is null or emp.comm = 0;
--110. Seleccionar nombre de empleado y nombre de departamento para los empleados que tengan una 'a' en su nombre.
select emp.ename "Nombre empleado", dept.dname "Nombre departamento" from emp join dept on dept.deptno = emp.deptno where emp.ename like '%A%';
--111. Seleccionar nombre de empleado y nombre departamento para los empleados que tengan una vocal al menos (a, e, i, o, u) en su nombre.
select emp.ename "Nombre empleado", dept.dname "Nombre departamento" from emp join dept on dept.deptno = emp.deptno where emp.ename like '%A%' or emp.ename like '%E%' or emp.ename like '%I%' or emp.ename like '%O%' or emp.ename like '%U%';
--112. Seleccionar nombre y puesto de empleado, código de departamento y nombre de departamento de los empleados cuyo departamento está ubicado en 'Chicago'. Todos los valores deben devolverse en minúsculas.
select lower(emp.ename) "Nombre empleado", lower(emp.job) Puesto, dept.deptno "Código departamento", lower(dept.dname) "Nombre departamento" from emp join dept on emp.deptno = dept.deptno where dept.loc = 'CHICAGO';
--113. Seleccionar nombre, código de empleado, nombre de su jefe y código de empleado de su jefe para todos los empleados (no se deben mostrar los que no tienen jefe).
select emp.ename "Nombre empleado", emp.empno "Código empleado", jefe.ename "Nombre jefe", jefe.mgr "Código jefe" from emp join emp jefe on emp.empno = jefe.empno where jefe.mgr is not null;
--114. Seleccionar nombre, código de empleado, nombre de su jefe y código de empleado de su jefe para todos los empleados (se deben mostrar TODOS, incluso los que no tienen jefe).
select emp.ename "Nombre empleado", emp.empno "Código empleado", jefe.ename "Nombre jefe", jefe.mgr "Código jefe" from emp join emp jefe on emp.empno = jefe.empno;
--115. Seleccionar código departamento, nombre de empleado y nombre de jefe de cada empleado del departamento que está en Boston. --NO HAY NINGUNO CON CÓDIGO 40, QUE CORRESPONDE A BOSTON
select dept.deptno "Código departamento", emp.ename "Nombre empleado", jefe.ename "Nombre jefe"  from emp join dept on emp.deptno = dept.deptno join emp jefe on emp.empno = jefe.empno where dept.loc like 'BOSTON';
--116. Seleccionar nombre y fecha contrato de los empleados contratados posteriormente al empleado 'WARD'.
select ename Nombre, hiredate "Fecha contrato" from emp where hiredate > (select hiredate from emp where ename = 'WARD') order by hiredate;
--118. Seleccionar nombre y fecha de contrato de los empleados, además del nombre y fecha de contrato de su jefe, siempre y cuando la fecha del contrato del empleado fuera anterior a la fecha de contrato de su jefe.
select emp.ename "Nombre empleado", emp.hiredate "Fecha contrato empleado", jefe.ename "Nombre jefe", jefe.hiredate "Fecha contrato jefe" from emp join emp jefe on emp.empno = jefe.empno where emp.hiredate < jefe.hiredate;
--119. Listar todos los nombres cuya longitud sea menor que la media de todas las longitudes de nombres de empleados redondeado al entero superior.
select ename Nombre from emp where length(ename) < (select ceil(avg(length(ename))) from emp);
--120. Seleccionar el nombre de los empleados y el nombre del departamento al que pertenecen, siempre y cuando el nombre del departamento comience por la letra 'S'.
select emp.ename "Nombre empleado", dept.dname "Nombre departamento" from emp join dept on emp.deptno = dept.deptno where dept.dname like 'S%';