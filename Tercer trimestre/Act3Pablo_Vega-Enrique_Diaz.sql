set serveroutput on;
create or replace procedure obtenerSalEmpMes(
    var1 in integer
)
is
     var2 integer; 
    noDatos exception;
begin
    
    select sum(sal) into var2 from emp where (extract(month from hiredate) = var1);
   
    if var2 is null then
        raise noDatos; 
    else
        dbms_output.put_line('La suma de los salarios de los empleados contratados en ' || var1 || ' es ' || var2);
    end if;
exception when noDatos then
    var2 := -1;
    dbms_output.put_line(var2);
end;
/

declare
    mes integer := 4;
begin
    obtenerSalEmpMes(mes);
end;
/

