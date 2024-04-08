--Bucles
set serveroutput on;
declare
    i int :=0;
begin
    loop
        if i<10 then
            dbms_output.put_line(i);
        elsif i = 10 then
            exit;
        end if;
        i:= i+1;
    end loop;
end;
/

declare
    i int :=0;
begin
    loop
        exit when i >= 10;
        dbms_output.put_line(i);
        i:= i+1; -- No i++
    end loop;
end;
/
--Ejercicio13
declare 
    i int :=0;
begin
    loop
        exit when i > 20;
        dbms_output.put_line(i);
        i:= i+1;
    end loop;
end;
/
--Ejercicio14
declare
    i int :=0;
begin
    loop
        dbms_output.put_line(i);
        if i >= 20 then
        exit;
        end if;
        i := i+1;
    end loop;
end;
/