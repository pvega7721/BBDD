create or replace function today2_is_fun(fecha date) return date
is
begin
    dbms_output.put_line('Hoy es' || to_char(fecha,'DD/MM/YYYY'));
    return fecha;
end;
/
set serveroutput on;
create or replace procedure today2_is(fecha date)
is
begin
    dbms_output.put_line('Hoy es' || to_char(fecha,'DD/MM/YYYY'));
end;
/
--Bloque de cídigo anónimo
begin
    dbms_output.put_line(to_char(today2_is_fun('01/01/2021'),'YYYY'));
    --today2_is('hola');
    --today2_is(4);
    today3_is('01/01/2021');

end;
/
/*
Crear el procedimiento today3_is que, primero, tenga una variable local llamada anterior que sea date y que
valga un día menos que el parámetro de fecha pasado. Mostrar por consola la variable llamada anterior,
Luego modifica tu bloque de código anónimo para llamar a ese today3_is con el día de tu cumpleaños.
*/
create or replace procedure today3_is(fecha date)
is
    anterior date:= fecha-1;
begin
    DBMS_OUTPUT.PUT_LINE(anterior);
end;
/
begin
    today3_is('02/04/2005');
end;
/
--cambia el today3_is porque quiero ver solo el año
create or replace procedure today3_is(fecha date)
is
    anterior date:= fecha-1;
begin
    DBMS_OUTPUT.PUT_LINE(to_char(anterior,'YYYY'));
end;
/
begin
    today3_is('02/04/2005');
end;
/

declare
    pi constant number := 3.1415926535;
begin
    DBMS_OUTPUT.PUT_LINE('pi');
END;
/
--Prueba MA