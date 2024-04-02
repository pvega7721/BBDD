set serveroutput on;
--Ejercicio8
declare
    num1 number := 4;
    num2 number := 3;
    total number;
begin
    if num1>num2 then
    total:= num1+num2;
    end if;
    dbms_output.put_line('La suma de ' || num1 || ' y ' || num2 || ' es: ' || total);
end;
/
--Ejercicio9
