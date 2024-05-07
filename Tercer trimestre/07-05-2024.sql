set serveroutput on;
--Ejercicio1
create or replace procedure consultarEmpleado(v_empno empno%type, v_ename emp.empno, v_job emp.job)
is 
    numEmpleado emp.empno&type;
begin
    select empno, ename, job into numEmpleado, v_ename,v_job from emp where empno = v_empno;
    dbms_output.put_line('Nombre: ' || v_ename || 'Puesto: ' || v_job);

exception when do_data_found then
    dbms_output.put_line('No se han encontrado datos');
end;
/


create or replace package gestionEMP
is
    procedure nuevoEmpleado(
        vempno emp.empno%type,
        ename emp.ename%type,
        job emp.job%type,
        mgr emp.mgr%type,
        hiredate emp.hiredate%type,
        sal emp.sal%type,
        comm emp.comm%type,
        deptno emp.deptno%type,
        mensaje out varchar
    );
end;
/
create or replace package body gestionEMP
is
    procedure nuevoEmpleado(
        vempno emp.empno%type,
        ename emp.ename%type,
        job emp.job%type,
        mgr emp.mgr%type,
        hiredate emp.hiredate%type,
        sal emp.sal%type,
        comm emp.comm%type,
        deptno emp.deptno%type,
        mensaje out varchar
    )
    is
        existe emp.empno%type;
    begin
        select empno into existe from emp where empno = vempno;
        mensaje := 'El empno ya existe';
    exception
        when no_data_found then
            insert into emp values (vempno,ename,job,mgr,hiredate,sal,comm,deptno);
            mensaje := 'Registro creado correctamente';
    end;
end;
/
declare
    mensaje varchar(100);
begin
    gestionEMP.nuevoEmpleado(2222,'prueba',null,null,null,null,null,10,mensaje);
    dbms_output.put_line(mensaje);
end;
/