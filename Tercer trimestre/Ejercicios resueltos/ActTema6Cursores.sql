set serveroutput on;
--1. Definir un cursor implícito para obtener por pantalla el nombre y los apellidos del 
--estudiante con DNI=’00000000T’ de la tabla ESTUDIANTES.Tener en cuenta que el DNI puede 
--no existir en la tabla.

declare
    estudiante estudiantes%rowtype;
    v_dni estudiantes.dni%type := '&Dime_dni';
begin
    Select * into estudiante from estudiantes where dni = v_dni;
    dbms_output.put_line('El estudiante es: '||estudiante.nombre||' '||estudiante.apellidos);
exception
    when no_data_found then
    dbms_output.put_line('No existe el estudiante');
end;
/

--2. Definir un cursor implícito para obtener por pantalla el dni y los apellidos 
--del estudiante cuyo nombre sea Marta en la tabla ESTUDIANTES. Tener en cuenta 
--tanto que puede no existir ningún estudiante que se llame así o que pueda haber 
--varios con el mismo nombre.

declare
    v_nombre estudiantes.nombre%type := '&Dime_nombre';
    estudiante estudiantes%rowtype;
begin
    select * into estudiante from estudiantes where nombre = v_nombre;
    dbms_output.put_line('El DNI es '||estudiante.dni);
    dbms_output.put_line('Los apellidos son '||estudiante.apellidos);
exception
    when no_data_found then
    dbms_output.put_line('No existe el estudiante con nombre '||v_nombre);
    when too_many_rows then
    dbms_output.put_line('Hay varios estudiantes con el mismo nombre' );
end;
/












