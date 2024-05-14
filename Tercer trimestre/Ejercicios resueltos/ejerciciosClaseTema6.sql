set serveroutput on;
declare
    mivariable int;
    mivariable2 dept.deptno%type; --numbre (2,0) ahora, si cambia, el nuevo
    mivariable3 dept.dname%type;
    mivariable4 dept.loc%type;
    mifila dept%rowtype;
begin
    mivariable := 25;-- 2 cosas que no se pueden hacer ni el = para asignar ni el == para comparar
    mivariable2:= 8;
    mivariable3 := 'Nombre';
    mivariable4 := 'Sevilla bajo';
    mifila.deptno := 8;
    dbms_output.put_line(mivariable4);
    select loc into mivariable4 from dept where deptno = 10; --para guardar todos los datos selecionados en la variable mifila
    dbms_output.put_line(mivariable);
    dbms_output.put_line(mivariable2);
    dbms_output.put_line(mifila.deptno);
    select * into mifila from dept where deptno = 10;
    dbms_output.put_line(mifila.deptno || mifila.dname || mifila.loc);
end;
/

declare
    fecha date;
    fecha2 date := '06/04/2021';
    numero number(3):= 0;
    numero2 number(4,2):= 10.99;
    clase varchar2(10) := 'CLASE DAW';
    numero3 CONSTANT number := 11;
begin
    dbms_output.put_line(''); 
end;
/


declare
    variable1 emp.ename%type;
    variable2 emp%rowtype;
begin
    select ename into variable1 from emp where empno = 7839;
    select * into variable2 from emp where empno = 7698;
    dbms_output.put_line(''); 
end;
/

--Crea un bloque de código anónimo que pida la base y altura de un triángulo, 
--y devuelva el área de este
create or replace function calcularAreaTriangulo (base int, altura int) return number
is
    total number := 0;
begin
    total := base * altura / 2;
    return total;
end;
/
declare
    base int := &Dime_la_base;
    altura int := &Dime_la_altura;
begin
    dbms_output.put_line('El área es '|| calcularAreaTriangulo(base,altura)); 
end;
/
--Crea un bloque de código anónimo que requiera por pantalla un nombre, 
--luego un apellido y muestre como resultado “Hola nombre apellido”.
declare
    nombre varchar2(10) := '&Dime_nombre';
    apellido varchar2(10) := '&Dime_apellido';
begin
    dbms_output.put_line('Hola '|| nombre ||' '|| apellido);
end;
/
--Crea un programa que realiza la suma, resta, multiplicación y división de dos números 
--enteros, num1 y num2 (8 y 4).
create or replace procedure calculadora (num1 int, num2 int) 
is 
    suma number := num1 + num2;
    resta number := num1 - num2;
    multiplicacion number := num1 * num2;
    division number := num1 / num2;
begin 
    dbms_output.put_line('La suma es '||suma);
    dbms_output.put_line('La resta es '||resta);
    dbms_output.put_line('La multiplicacion es '||multiplicacion);
    dbms_output.put_line('La division es '||division);
end; 
/

declare
    num1 int := &Dime_numero;
    num2 int := &Dime_otro_numero;
begin
    calculadora(num1, num2);
end;
/





