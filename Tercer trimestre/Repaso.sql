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
    dbms_output.put_line('El �rea del tri�ngulo es: ' || area);
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
    dbms_output.put_line('Multiplicaci�n');
        dbms_output.put_line(num1*num2);
    dbms_output.put_line('Divisi�n');
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
    nota integer := '&Introduce_un_n�mero';
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
        dbms_output.put_line('Nota no v�lida');
    end if;
end;
/

--Ejercicio 11
declare
    nota integer := '&Introduce_un_n�mero';
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
        dbms_output.put_line('Nota no v�lida');
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
    dbms_output.put_line('Ejercicio1');
    persona1.codigo := 001;
    persona1.nombre := 'Pablo';
    persona1.edad := 19;
    dbms_output.put_line('C�digo: ' || persona1.codigo);
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
        profesor Tpersona
    );
     profesor1 Tpersona;
--2.2
    alumno1 alumno;
    alumno2 alumno;
begin
    dbms_output.put_line('Ejercicio2');
    profesor1.codigo := 002;
    profesor1.nombre := 'Jos�';
    profesor1.edad := 43;
    alumno1.nombre := 'Juan';
    alumno1.profesor := profesor1;
    alumno2.nombre := 'Luis';
    alumno2.profesor.codigo := 003;
    dbms_output.put_line('Alumno1 nombre: ' || alumno1.nombre);
    dbms_output.put_line('Profesor2 nombre: ' || alumno1.profesor.nombre);
    dbms_output.put_line('Alumno2 nombre: ' || alumno2.nombre);
    dbms_output.put_line('C�digo del profesor del alumno2: ' || alumno2.profesor.codigo);
end;
/

--Ejercicio 3
declare
--registro con la misma estructura que la tabla dept
    type tipodept is record (
    deptno integer,
    dname varchar2(50),
    loc varchar2(50)
    );
    --Variable de tipo tipodept
    fila tipodept;
begin
dbms_output.put_line('Ejercicio3');
    select * into fila from dept where deptno = 10;
    dbms_output.put_line('Departamento: ' || fila.deptno || ' Nombre: ' || fila.dname || ' Ubicaci�n: ' || fila.loc);
end;
/

--Ejercicio4
declare
--registro con deptno y dname
    type tipodept is record (
    deptno integer,
    dname varchar2(50)
    );
    fila2 tipodept;
begin
    dbms_output.put_line('Ejercicio4');
    --Insertar los datos de deptno y dname con deptno 20 en la variable fila2
    select deptno, dname into fila2.deptno from dept where deptno =20;
    dbms_output.put_line('Departamento: ' || fila2.deptno || ' Nombre: ' || fila2.dname);
end;
/

--Ejercicio 5
declare
    --Tiene el valor de una fila completa de la tabal detp.
    filaCompleta dept%rowtype;
begin
    dbms_output.put_line('Ejercicio5');
    select * into filaCompleta from dept where deptno =30;
    dbms_output.put_line('Departamento: ' || filaCompleta.deptno || ' Nombre: ' || filaCompleta.dname || ' Ubicaci�n: ' || filaCompleta.loc);end;
/

--Ejercicio6
declare
    filaCompleta2 dept%rowtype;
begin
    dbms_output.put_line('Ejercicio6');
    select * into filaCompleta2 from dept where deptno = 40;
    dbms_output.put_line('Departamento: ' || filaCompleta2.deptno || ' Nombre: ' || filaCompleta2.dname || ' Ubicaci�n: ' || filaCompleta2.loc);
end;
/

--Ejercicio 7
declare
    --Tabla de tipo integer            esto es para poder acceder a las posiciones
    type tNumeros is table of integer index by binary_integer;
    --Creo una instancia de la tabla
    tabla1 tNumeros;
begin
    dbms_output.put_line('Ejercicio 7');
    for i in 1..10 loop
    tabla1(i) := i;
    dbms_output.put_line('Posici�n ' || i || ': ' || i);
    end loop;
end;
/
--Ejercicio 8
declare
    type persona is record(
        nombre varchar2(50),
        apellido1 varchar2(50),
        apellido2 varchar2(50)
    );
    type personas is table of persona index by binary_integer;
    persona1 personas;
begin
    dbms_output.put_line('Ejercicio 8');
    persona1(1).nombre := 'Pablo';
    persona1(1).apellido1 := 'Vega';
    persona1(1).apellido2 := 'Flores';
                            --Al imprimir alg�n dato de la tabla, hay que especificar tambi�n la posici�n.
    dbms_output.put_line('Nombre: ' || persona1(1).nombre || 'Apellido1: ' || persona1(1).apellido1 || 'Apellido2: ' || persona1(1).apellido2);
end;
/
--Ejercicio9 (Sobre el 7)
declare
    --Tabla de tipo integer            esto es para poder acceder a las posiciones
    type tNumeros is table of integer index by binary_integer;
    --Creo una instancia de la tabla
    tabla1 tNumeros;
begin
    dbms_output.put_line('Ejercicio 9');
    for i in 1..10 loop
    tabla1(i) := i;
    dbms_output.put_line('Posici�n ' || i || ': ' || i);
    end loop;
    dbms_output.put_line('N�umero de elementos en la tabla: ' || tabla1.count);
    dbms_output.put_line('Primera posici�n: ' || tabla1.first);
    dbms_output.put_line('�ltima posici�n: ' || tabla1.last);
    tabla1.delete(tabla1.last);
    dbms_output.put_line('�ltimo elemento borrado');
    dbms_output.put_line('N�umero de elementos en la tabla: ' || tabla1.count);
    if tabla1.exists(10) then
    dbms_output.put_line('El elemento 10 existe');
    else
    dbms_output.put_line('El elemento 10 no existe');
    end if;
end;
/

--Ejercicio10 FALTA POR HACER
--7839 y 7698
declare
    --Pedimos al usuario dos n�meros
    num1 integer := &Introduce_Numero1;
    num2 integer := &Introduce_Numero2;
    --Creamos tabla integer
    type tNumeros is table of integer index by binary_integer;
    --Creamos tabla con los valores de la tabla emp
    type tEmp is table of emp%rowtype index by binary_integer;
begin
    --Guardamos los n�meros introducidos por el usuario en la tabla
    tNumeros(1) := num1;
    tNumeros(2) := num2;
    --
end;
/
-- FALTA POR HACER