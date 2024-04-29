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
    dbms_output.put_line('Ejercicio1');
    dbms_output.put_line(numero2);
end;
/

--Ejercicio2
declare
    variable1 emp.ename%type;
    variable2 emp%rowtype;
begin
    dbms_output.put_line('Ejercicio2');
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
    dbms_output.put_line('Ejercicio3');
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
    dbms_output.put_line('Ejercicio5');
    area := (base*altura) /2;
    dbms_output.put_line('El área del triángulo es: ' || area);
end;
/

--Ejercicio 6
declare
    nombre varchar2(50);
    apellido varchar2(50);
begin
    dbms_output.put_line('Ejercicio6');
    nombre := '&nombre';
    apellido := '&apellido';
    dbms_output.put_line('Hola ' || nombre || ' ' || apellido);
end;
/

--Ejercicio7
declare
num1 integer :=8;
num2 integer :=4;
begin
    dbms_output.put_line('Ejercicio7');
    dbms_output.put_line('Suma');
        dbms_output.put_line(num1+num2);
    dbms_output.put_line('Resta');
        dbms_output.put_line(num1-num2);
    dbms_output.put_line('Multiplicación');
        dbms_output.put_line(num1*num2);
    dbms_output.put_line('División');
        dbms_output.put_line(num1/num2);
end;
/

--Ejercicio8
declare
    num1 integer := 7;
    num2 integer := 3;
begin
    dbms_output.put_line('Ejercicio8');
    if num1 > num2 then
        dbms_output.put_line(num1+num2);
    end if;
end;
/

--Ejercicio9
declare
    num1 integer := 3;
    num2 integer := 7;
begin
    dbms_output.put_line('Ejercicio9');
    if num1 > num2 then
        dbms_output.put_line(num1-num2);
    ELSE
        dbms_output.put_line(num1 || ' es mayor que ' || num2);
    end if;
end;
/

--Ejercicio 10
declare
    nota integer := '&Introduce_un_número';
begin
    dbms_output.put_line('Ejercicio10');
    if nota <5 then
        dbms_output.put_line('Suspenso');
    elsif nota <6 then
        dbms_output.put_line('Aprobado');
    elsif nota <7 then
        dbms_output.put_line('Bien');
    elsif nota <9 then
        dbms_output.put_line('Notable');
    elsif nota <11 then
        dbms_output.put_line('Sobresaliente');
    else
        dbms_output.put_line('Nota no válida');
    end if;
end;
/

--Ejercicio 11
declare
    nota integer := '&Introduce_un_número';
begin
    dbms_output.put_line('Ejercicio10');
    case nota
    when nota <5 then
        dbms_output.put_line('Suspenso');
    when nota <6 then
        dbms_output.put_line('Aprobado');
    when nota <7 then
        dbms_output.put_line('Bien');
    when nota <9 then
        dbms_output.put_line('Notable');
    when nota <11 then
        dbms_output.put_line('Sobresaliente');
    else
        dbms_output.put_line('Nota no válida');
    end case;
end;
/
