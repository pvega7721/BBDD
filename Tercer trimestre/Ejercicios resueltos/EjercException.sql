--Excepciones
set serveroutput on;

/*Sobre la tabla Estudiantes. Escribir un bloque que muestre el número total de estudiantes y 
lanzar una excepción NO_ALUMNOS si el número es igual a 0, indicando con un mensaje que no hay
alumnos.*/

declare 
    totalEstudiantes int;
    no_alumnos exception; --1. crear una valiable con el nombre de la excepcion
    muchos_alumnos exception;
begin
    select count(*) into totalEstudiantes from estudiantes;
    if totalEstudiantes = 0 then
        raise no_alumnos; --2. interrumpimos la ejecución del programas lanzando la excepcion
    elsif totalEstudiantes >= 5 then
        raise muchos_alumnos;
    else
        dbms_output.put_line('Total de estudiantes '||totalEstudiantes);
    end if;
exception
    when no_alumnos then --3.desarrollar como tratamos la excepcion. que hacemos cuando salte
        dbms_output.put_line('No hay alumnos');
    when muchos_alumnos then
        dbms_output.put_line('Hay 5 o más alumnos');
end;
/
/*rase application error en las excepciones anteriores*/

declare 
    totalEstudiantes int;
begin
    select count(*) into totalEstudiantes from estudiantes;
    if totalEstudiantes = 0 then
        raise_application_error(-20001,'No hay alumno');
    elsif totalEstudiantes >= 5 then
        raise_application_error(-20002,'Hay muchos alumnos');
    else
        dbms_output.put_line('Total de estudiantes '||totalEstudiantes);
    end if;

end;
/