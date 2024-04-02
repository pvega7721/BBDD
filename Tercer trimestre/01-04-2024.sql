set serveroutput on;

--Ejercicio1
declare 
    fecha date;
    fecha1 date := '06/04/2021';
    numero number(3);
    numero1 number(4,2) := 10.99;
    nombre1 varchar2(10) := 'CLASE DE D';
    numero2 constant number := 11;
begin
    dbms_output.put_line(numero2);
end;
/
--Ejercicio2
declare
    variable1 emp.ename%type;
    variable2 emp%rowtype;
begin
    --Primer caso
    select ename into variable1 from emp where empno = 7839;
    dbms_output.put_line(variable1);
end;
/

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

--Ejercicio 5 con funcion
create or replace function calcularAreaTriangulo(base1 int, altura1 int) return number
is
    area1 number :=0;
begin
    area1 := ((base1*altura1)/2);
    return area1;
end;
/

declare
 resultado number;
begin
    resultado := calcularAreaTriangulo(2,4);
    dbms_output.put_line('El área del triángulo es: ' || resultado);
end;
/

--Ejercicio6
declare
    nombre varchar2(20) := &nombre;
    apellido varchar2(20) := &apellido;
begin
    dbms_output.put_line('Hola ' || nombre || ' ' || apellido);
end;
/

--Ejercicio7
declare
    num1 number := 8;
    num2 number := 4;
begin
    dbms_output.put_line('Suma ' || (num1+num2));
    dbms_output.put_line('Resta ' || (num1-num2));
    dbms_output.put_line('Multiplicación ' || (num1*num2));
    dbms_output.put_line('División ' || (num1/num2));
end;
/