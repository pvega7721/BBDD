set serveroutput on;

--PDF 1

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
    dbms_output.put_line('Ejercicio11');
    case --Despues de case no va nota
    when nota <5 then
        dbms_output.put_line('Suspenso');
    when nota <6 then
        dbms_output.put_line('Aprobado');
    when nota <7 then
        dbms_output.put_line('Bien');
    when nota <9 then
        dbms_output.put_line('Notable');
    when nota <=10 then
        dbms_output.put_line('Sobresaliente');
    else
        dbms_output.put_line('Nota no válida');
    end case;
end;
/

--Ejercicio12
declare
    golCasa integer := '&Goles_equipo_casa';
    golVisitante integer := '&Goles_equipo_visitante';
begin
    dbms_output.put_line('Ejercicio 12');
    if golCasa > golVisitante then
        dbms_output.put_line('Ha ganado el equipo de casa');
    elsif golCasa < golVisitante then
        dbms_output.put_line('Ha ganado el equipo visitante');
    else
        dbms_output.put_line('Empate');
    end if;
end;
/

--Ejercicio 13
declare
    num integer := 0;
begin
    dbms_output.put_line('Ejercicio 13');
    loop
    dbms_output.put_line(num);
    num := num +1;
    exit when num =21;
    end loop;
end;
/

--Ejercicio 14
declare
    num integer := 0;
begin
    dbms_output.put_line('Ejercicio 14');
    loop
    dbms_output.put_line(num);
    num := num +1;
    if num = 21 then
    exit;
    end if;
    end loop;
end;
/

--Ejercicio 15
declare
    num integer := 0;
begin
    dbms_output.put_line('Ejercicio 15');
    while num!=21 loop
    dbms_output.put_line(num);
    num := num +1;
    if num = 21 then
    exit;
    end if;
    end loop;
end;
/

--Ejercicio 16
declare
    num integer := 0;
begin
    dbms_output.put_line('Ejercicio 16');
    for i in 1..20 loop
    dbms_output.put_line(num);
    num := num +1;
    if num = 21 then
    exit;
    end if;
    end loop;
end;
/
--Ejercicio 17
declare
    num integer := 21;
begin
    dbms_output.put_line('Ejercicio 17');
    for i in reverse 1..20 loop
        num := num -1;
        dbms_output.put_line(num);
        if num = 0 then
            exit;
        end if;
    end loop;
end;
/
--Ejercicio 18
declare
    num integer := 0;
begin
    dbms_output.put_line('Ejercicio 18');
    for i in reverse 1..40 loop
        num := num +2;
        dbms_output.put_line(num);
        if num = 40 then
            exit;
        end if;
    end loop;
end;
/
--Ejercicio 19
declare
    num1 integer := 0;
    num2 integer := 0;
begin
    dbms_output.put_line('Ejercicio19');
    for i in 1..10 loop
        for j in 1..10 loop
            dbms_output.put_line(i || 'X' || j || '=' || (i*j));
        end loop;
    end loop;
end;
/

--PDF 2

--Ejercicio 1
declare
    --Los regisros se crean dentro del delcare
    type Tpersona is record (
        codigo integer,
        nombre varchar2(100),
        edad integer
    );
    persona1 Tpersona;
begin
    persona1.codigo := 001;
    persona1.nombre := 'Pablo';
    persona1.edad := 19;
    dbms_output.put_line('Código: ' || persona1.codigo);
    dbms_output.put_line('Nombre: ' || persona1.nombre);
    dbms_output.put_line('Edad: ' || persona1.edad);
end;
/

--Ejercicio 2

declare
--2.1
--Registro Tpersona como el del ejercicio anterior
    type Tpersona is record (
        codigo integer,
        nombre varchar2(100),
        edad integer
    );
--Registro alumno
    type alumno is record(
        nombre varchar2(100),
        profesor1 Tpersona
    );
--2.2
    alumno1 alumno;
begin
    profesor.codigo := 002;
    profesor.nombre := 'José';
    profesor.edad := 43;
    alumno1.nombre := 'Juan';
    alumno1.profesor := profesor1;
end;
/
