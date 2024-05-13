set serveroutput on;
create or replace package datosEmpleados is
    function obtenerNombresEmpleado(vempno emp.empno%type) return emp.ename%type;
    procedure mostrarEmpleados;
end;
/

create or replace package body datosEmpleados is
    function obtenerNombresEmpleado(vempno emp.empno%type) return emp.ename%type
    is
        nombre emp.ename%type;
    begin
        select ename into nombre from emp where empno = vempno;
        return nombre;
    exception
        when no_data_found then
            dbms_output.put_line('Ese empno no existe en la bbdd');
            return 'ERROR';
    end;
    procedure mostrarEmpleados
    is
    begin
        dbms_output.put_line('');
    end;
end;
/
declare
    codigoEmp emp.empno%type := &mete_empno;
begin
    dbms_output.put_line(datosEmpleados.obtenerNombresEmpleado(codigoEmp));
    datosEmpleados.mostrarEmpleados;
end;
/

declare
    miVocal varchar(1) := '&vocal';
    cursor cursorcito is select ename from emp where ename like '%' ||miVocal||'%';
begin
    if lower(miVocal) = 'a' or lower(miVocal) = 'e' or lower(miVocal) = 'i' or lower (miVocal) = 'o' or lower(miVocal) = 'u' then
        for fila in cursorcito loop
          dbms_output.put_line(fila.ename);
        end loop;
         dbms_output.put_line(fila.ename || ' tiene ' || );
    end if;
end;
/
