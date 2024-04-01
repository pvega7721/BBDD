set serveroutput on;
--Ejercicio1
declare 
    fecha date;
    fecha2 date := '06/04/2021';
    --fecha2 date := to_date('06/04/2021');
    --fecha2 date := to_date('06/04/2021', 'dd/mm/aaaa');
    numero number(3);
    numero1 number(4,2) := 10.99;
    nombre1 varchar2(10) := 'CLASE DE D';
    --nombre1 varchar2(15) := 'CLASE DE DAMDAW';
    numero2 constant number := 11;
begin
    numero2 := 1;
    dbms_output.put_line('');
end;
/
--Ejercicio2
/*declare
    variable1 emp.ename%type;
    variable2 emp%rowtype;
begin
    --Primer caso
    select ename into variable1 from emp where empno = 7839;
    dbms_output.put_line(variable1);
    --Segundo caso
    select * into variable2 from emp where emp 
    dbms_output.put_line(variable2.ename);
end;
/
*/
--Ejercicio 5
declare
    base number(4,2) := &Introduce_la_base;
    altura number(4,2) := &Introduce_la_altura;
    area number (4,2);
begin
    area := ((base*altura)/2);
    DBMS_OUTPUT.PUT_LINE(area);
end;
/
create or replace function calcularAreaTriangulo(base int, altura int) return number
is
    base1 number(4,2) := &Introduce_la_base;
    altura1 number(4,2) := &Introduce_la_altura;
    area1 number :=0;
begin
    area1 := ((base1*altura1)/2);
    return area1;
end;
/