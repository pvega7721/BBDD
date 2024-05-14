set serveroutput on;

--8.Crea un programa que realiza la suma de dos números enteros, num1 y num2, si num1 es mayor 
--que num2. En caso contrario que no haga nada. Asigna por ejemplo los valores 7 y 3 a los 
--números.

declare
    num1 integer := 7;
    num2 integer := 3;
    suma integer := num1 + num2;
begin
    if num1 > num2 then dbms_output.put_line('La suma de '||num1||' y '||num2||' es '||suma);
    end if;
end;
/

--9.Crea un programa que realiza la resta de dos números enteros, num1 y num2, si num1 es 
--mayor que num2. En caso contrario, que muestre por pantalla ‘num1 es menor que num2’, 
--sustituyendo num1 y num2 por sus valores.
create or replace function restaNumEnteros (num1 int, num2 int) return int
is
    resta int := num1 - num2;
    
begin
    if num1 > num2 then 
    dbms_output.put_line('La resta de '||num1||' y '||num2||' es: ');
    return resta;
    else dbms_output.put_line('num1 es menor que num2');
    return -1;
    end if;
end;
/

declare
    num1 int := &Dame_num1;
    num2 int := &Dame_num2;
begin
    dbms_output.put_line(restaNumEnteros(num1, num2));
end;
/

--10.Crea un programa que pida una variable al usuario para que la introduzca por teclado 
--(tiene que ser un número), y según sea su valor entre 0 y 10, devuelva por pantalla el 
--valor de la nota: SUSPENSO, APROBADO, BIEN, NOTABLE, SOBRESALIENTE. En caso contrario, 
--que devuelva ‘El valor introducido es incorrecto’.

declare
    num1 number(3,1) := &Dame_num1;
begin
    if num1 < 5 and num1 >=0 then dbms_output.put_line('SUSPENSO');
    elsif num1 < 6 and num1 >=5 then dbms_output.put_line('APROBADO');
    elsif num1 < 7 and num1 >=6 then dbms_output.put_line('BIEN'); 
    elsif num1 < 9 and num1 >=7 then dbms_output.put_line('NOTABLE');
    elsif num1 <10 and num1 >=9 then dbms_output.put_line('SOBRESALIENTE');
    else dbms_output.put_line('El valor introducido es incorrecto');
    end if;
end;
/

--11.Realiza el mismo ejercicio 11 pero utilizando CASE en lugar de IF | ELSIF | END IF.

declare
    num1 number(2,1) := &Dame_num1;
begin
    case
        when num1 < 5 and num1 >=0 then dbms_output.put_line('SUSPENSO');
    
        when num1 < 6 and num1 >=5 then dbms_output.put_line('APROBADO');
    
        when num1 < 7 and num1 >=6 then dbms_output.put_line('BIEN');
   
        when num1 < 9 and num1 >=7 then dbms_output.put_line('NOTABLE');
     
        when num1 <10 and num1 >=9 then dbms_output.put_line('SOBRESALIENTE');
    else dbms_output.put_line('El valor introducido es incorrecto');
    end case;
end;
/

--12.Realiza un programa que lea por teclado dos números enteros. El primero será los goles 
--del equipo de casa, y el segundo los goles del equipo de fuera. Se quiere devolver por 
--pantalla quién ha ganado: “El equipo de casa/visitante ha ganado”. En caso de empate se 
--indicará “El resultado del partido ha sido de empate”.

declare
    golescasa int := &Dime_golescasa;
    golesfuera int := &Dime_golesfuera;
begin
    case
        when golescasa > golesfuera then
        dbms_output.put_line('El equipo de casa ha ganado');
        when golescasa < golesfuera then
        dbms_output.put_line('El equipo de visitante ha ganado');
        else dbms_output.put_line('El resultado del partido ha sido de empate');
    end case;
end;
/

--13.Realiza un programa que ejecute un bucle LOOP y se salga con un EXIT WHEN. Para ello crea 
--una variable entero inicializada a 0 y que se vaya incrementando en el bucle, además 
--de mostrar por pantalla su valor; la condición de salida será cuando dicha variable 
--valga más de 20.
declare 
    contador int :=0;
begin
    loop
        contador := contador+1;
        dbms_output.put_line(contador);
        exit when contador > 20;
    end loop;
end;
/

--14.Realiza un programa que haga lo indicado en el ejercicio 13 pero que se salga mediante 
--un IF condición THEN EXIT.

declare
     contador int :=0;
begin
     loop
        contador := contador+1;
        dbms_output.put_line(contador);
        if contador > 20 then exit;
      end if;
     end loop;
end;
/

--Ejercicio15 while LOOP
 
declare
numero int :=0;
begin
    while numero <= 20 loop
        numero := numero+1;
        dbms_output.put_line(numero);
    end loop;
end;
/
 
--ejemplo loop mostrar del 1 al 9
set serveroutput on;
declare
i int :=0;
begin
    loop
    if i<10 then
         dbms_output.put_line(i);
     else
        exit;
    end if;
    i:= i+1; --i++ no, i+=1;
    end loop;
end;
/
 
--Ejercicio16 FOR
declare
    numero int :=0;
begin
    for i in 1..20 loop
    dbms_output.put_line(i);
    end loop;
end;
/
 
--Ejercicio17 FOR REVERSE
declare
begin
for i in reverse 0..20 loop
    dbms_output.put_line(i);
    end loop;
end;
/
 
--Ejercicio 19 tabla multiplicar
declare
begin
    for indice in 1..10 loop
        for j in 1..10 loop
    dbms_output.put_line(indice || 'x' || j || '=' || indice*j);
        end loop;
    end loop;
end;
/

