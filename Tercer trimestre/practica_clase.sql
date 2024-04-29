set serveroutput on;
begin
    DBMS_OUTPUT.PUT_line('No he puesto nada');
end;
/
declare
    otro integer := &Numero;
    cadena varchar(2) := '&Cadena';
begin
    DBMS_OUTPUT.PUT_LINE(Cadena || ' ' || otro);
    END; 
/
