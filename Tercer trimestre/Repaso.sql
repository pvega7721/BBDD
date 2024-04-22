set serveroutput on;
--Ejercicio1
declare
    fecha date;
    fecha1 date := '06-04-2021';
    numero1 number(3);
    numero2 number(4,2) := 10.99;
    caracter varchar2(10) := 'DAM/DAW';
    numero3 constant number := 11;
begin
    dbms_output.put_line(numero2);
end;
/

--Ejercicio2
declare
    variable1 emp.ename%type;
    variable2 emp%rowtype;
begin
    dbms_output.put_line(variable1);
    --Variable2 no puede imprimirse sola, al ser una fila entera hay que especificar que columna se quiere imprimir
    dbms_output.put_line(variable2.deptno);
end;
/

--Ejercicio3
declare
    variable1 emp.ename%type;
    variable2 emp%rowtype;
begin
    select ename into variable1 from emp where empno = 7839;
    dbms_output.put_line(variable1);
    select * into variable2 from emp where empno = 7698;
    dbms_output.put_line(variable2.deptno);
end;
/

--Ejercicio5
declare
    base integer := &base_triangulo;
    altura integer := &altura_triangulo;
    area integer;
begin
    area := (base*altura) /2;
    dbms_output.put_line('El área del triángulo es: ' || area);
end;
/

--Ejercicio 6
declare
    nombre varchar2(50);
    apellido varchar2(50);
begin
    nombre := &nombre;
    apellido := &apellido;
    dbms_output.put_line('Hola ' || nombre || ' ' || apellido);
end;
/