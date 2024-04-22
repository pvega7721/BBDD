set serveroutput on;
--CURSORES
--EJERCICIO1
declare
    nombreAlumno varchar2(50);
begin
    select nombre into nombreAlumno from estudiantes where dni = '97898989T';
    dbms_output.put_line(nombreAlumno);
exception
    when no_data_found then
    dbms_output.put_line('MARICON');
end;
/
--Ejercicio2
declare
    dni varchar2(9);
    apellidos varchar2(50);
begin
    select dni, apellidos into dni, apellidos from estudiantes where nombre = 'Marta';
    dbms_output.put_line(dni,apellidos);
end;
/

--Ejercicio3
declare
    cursor cEstudiantes is select nombre, apellidos, dni from estudiantes;
    cursor cEstudiantes is select * from estudiantes;
    --Falta completar
begin
    select nombre, apellidos, dni into from estudiantes

end;
/