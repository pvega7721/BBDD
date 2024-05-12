set serveroutput on;
--Ejercicio1
declare
    --nDept almacena el nombre de cada departamento
    nDept dept.dname%type;
    --nEmpleados almacena el número de empleados de cada departamento
    nEmpleados number;
begin
    --Bucle que recorre cada departamento y guarda en dept_rec los nombres y números de los departamentos
    for dept_rec in (select deptno, dname from dept) loop
    --Consulta que guarda la cantidad de empleados en la variable nEmpleados
        select count(ename) into nEmpleados from emp where deptno = dept_rec.deptno;
        dbms_output.put_line('Departamento: ' || dept_rec.dname || ', Empleados: ' || nEmpleados);
    end loop;
end;
/
--Ejercicio2
declare
    --Almacena el salario de cada empleado
    salMedio emp.sal%type;
    --variable para el aumento del salario
    salAumentado number;
begin
    --Calcular el salario medio de los empleados
    select avg(sal) into salMedio from emp;
    --Bucle que recorre cada empleado y calcula su salario con el aumento.
    for emp_rec in (select sal from emp) loop
       --calcular aumento del salario
       salAumentado := emp_rec.sal * 1.21;
        dbms_output.put_line('Importe de salario medio ' || emp_rec.sal || ' con ' || (emp_rec.sal*0.21) || ' del 21% y total ' || salAumentado);
    end loop;
end;
/

--Ejercicio3
declare
--Almacena el nombre del empleado
    nEmp emp.ename%type;
--Almacena el salario del empleado
    salario emp.sal%type;
begin
    --Recorre todos los empleados que han sido contratados en septimebre y los muestra
    for emp_rec in (select ename, sal into nEmp, salario from emp where extract(month from hiredate) = 9) loop
        dbms_output.put_line('Nombre: ' || emp_rec.ename || ' Salario: ' || emp_rec.sal);
    end loop;
end;
/
