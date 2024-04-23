set serveroutput on;
--Ejercicio1
create or replace function compruebaCadena (palabra1 varchar, palabra2 varchar) return varchar
is
    total varchar(100);
begin
    if length(palabra1)> length(palabra2) then
        return palabra1 || palabra2;
    elsif length(palabra1)< length(palabra2) then
        return palabra2 || palabra1;
    else
        for i in 1..length(palabra1) loop
            total := total || '-';
        end loop;
        return total;
    end if;
end;
/
--ejercicio inicial
if length(palabra1)> length(palabra2) then
        dbms_output.put_line(palabra1 || palabra2);
    elsif length(palabra1)< length(palabra2) then
        dbms_output.put_line(palabra2 || palabra1);
        
        
--Ejercicio2
declare
    palabra1 varchar(10) := '&palabra1';
    palabra2 varchar(10) := '&palabra2';
begin
    dbms_output.put_line(compruebaCadena(palabra1,palabra2));
end;
/