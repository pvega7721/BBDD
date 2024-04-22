set serveroutput on;
--Ejercicio1
create or replace procedure compruebaCadena (palabra1 varchar2(10), palabra2 varchar2(10))
is
begin
    if length(palabra1)> length(palabra2) then
        dbms_output.put_line(palabra1 || palabra2);
    elsif length(palabra1)< length(palabra2) then
        dbms_output.put_line(palabra2 || palabra1);
end;
/