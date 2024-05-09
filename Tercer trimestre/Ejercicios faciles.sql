-- Ejercicio1
create function DeveloperCodDept (nombre varchar2) return number
is
    codigo number;
begin
    select deptno into codigo from dept where dname = nombre;
    return codigo;
exception
    when no_data_found then
    dbms_output.put_line('No hay departamentos con ese ´nombre');
end;
/

declare
    nombre varchar2(20):= '&Nombre_departamento';
    codigo number;
begin
    codigo := DeveloperCodDept(nombre);
    dbms_output.put_line('El codigo del departamento ' || nombre || ' es: ' || codigo);
end;
/
select * from dept;