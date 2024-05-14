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

--Ejercicio4
declare 
    mesIntroducido number := '&Introduce_el_mes';
    nEmp emp.ename%type;
begin
    --Recorre todos los empleados que han sido contratados en ese mes y los muestra
    for emp_rec in (select ename into nEmp from emp where extract(month from hiredate) = mesIntroducido) loop
        dbms_output.put_line('El empeado es: ' || emp_rec.ename);
    end loop;
   
exception
    when NO_DATA_FOUND then
        dbms_output.put_line('No hay empleados contratados ese mes');
end;
/
--Ejercicio5
declare
    vEmpno emp.empno%type := &empno;
    vEname emp.ename%type := '&ename';
    vJob emp.job%type := '&puesto';
    vMgr emp.mgr%type := &mgr;
    vHiredate emp.hiredate%type := TO_DATE('&hiredate', 'DD/MM/YY');
    vSal emp.sal%type := &salario;
    vComm emp.comm%type := &comision;
    vDeptno emp.deptno%type := &deptno;
begin
    insert into emp values (vEmpno, vEname, vJob, vMgr, vHiredate, vSal, vComm, vDeptno);
        dbms_output.put_line('Registro insertado correctamente');
end;
/
--Ejercicio6
declare
    empBorrar emp.empno%type := &empnoABorrar;
    existeEmpleado number;
begin
    select count(*) into existeEmpleado from emp where empno = empBorrar;
    if existeEmpleado >0 then
        delete from emp where empno = empBorrar;
        dbms_output.put_line('Empleado eliminado');
    else
        raise NO_DATA_FOUND;
    end if;
exception
    when NO_DATA_FOUND then
        dbms_output.put_line('El empleado solicitado no existe');
end;
/
--Ejercicio7
declare 
    mesIntroducido varchar2(20) := '&Introduce_el_mes';
    mesConsulta number;
    nEmp emp.ename%type;
begin
    case mesIntroducido
        when 'enero' then mesConsulta := 1;
        when 'febrero' then mesConsulta := 2;
        when 'marzo' then mesConsulta := 3;
        when 'abril' then mesConsulta := 4;
        when 'mayo' then mesConsulta := 5;
        when 'junio' then mesConsulta := 6;
        when 'julio' then mesConsulta := 7;
        when 'agosto' then mesConsulta := 8;
        when 'septiembre' then mesConsulta := 9;
        when 'octubre' then mesConsulta := 10;
        when 'noviembre' then mesConsulta := 11;
        when 'diciembre' then mesConsulta := 12;
        else mesIntroducido := null;
    end case;
    --Recorre todos los empleados que han sido contratados en ese mes y los muestra
    for emp_rec in (select ename into nEmp from emp where extract(month from hiredate) = mesConsulta) loop
        dbms_output.put_line('El empeado es: ' || emp_rec.ename);
    end loop;
   
exception
    when NO_DATA_FOUND then
        dbms_output.put_line('No hay empleados contratados ese mes');
end;
/
--Ejercicio8
declare
    vdeptno emp.deptno%type := &deptno;
    nEmpleados number;
    existeEmpleado number;
begin
    select count(*) into existeEmpleado from emp where deptno = vdeptno;
    if existeEmpleado > 0 then
        dbms_output.put_line('El empleado existe');
        select count(*) into nEmpleados from emp where deptno = vdeptno;
        dbms_output.put_line('En el departamento ' || vdeptno || ' hay ' || nEmpleados || ' empleados');
    else
        dbms_output.put_line('El empleado solicitado no existe');
    end if;
end;
/