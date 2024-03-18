set serveroutput on;
begin
    DBMS_OUTPUT.PUT_line('No he puesto nada');
end;
/
declare
    num int := 8;
    num2 int := 4;
    otro integer := &Numero;
    cadena varchar(2) := '&Cadena';
begin
    DBMS_OUTPUT.PUT_LINE(Cadena || ' ' || Numero);
    END; 
/
    
