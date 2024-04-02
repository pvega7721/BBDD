set serveroutput on;
--Ejercicio8
declare
    num1 number := 4;
    num2 number := 3;
    total number;
begin
    if num1>num2 then
    total:= num1+num2;
    end if;
    dbms_output.put_line('La suma de ' || num1 || ' y ' || num2 || ' es: ' || total);
end;
/
/*Ejercicio 9 modificado
Crea una función llamada restarNumEnteros que reciba dos
parámetros, num1 y num2, y si num1 es mayor que num2, devuelva
la resta de ambos números. En caso contrario, muestra por
pantalla "Num1 es menor o igual que num2" y devuelva -1.
Llama a dicha función desde un bloque de código anónimo con
los valores 7 y 3, en primer lugar, y 4 y 8 en segundo lugar.
*/
create or replace function restarNumEnteros (num1 int, num2 int) return int
is
    resta int;
begin
    resta := num1-num2;
    if num1>num2 then
    return resta;
    else
    dbms_output.put_line(num1 || ' es menor que ' || num2);
        return -1;
    end if;  
end;
/

declare 
    numero1 int :=7;
    numero2 int :=3;
    resta int;
begin
    resta := restarNumEnteros(7,3);
    dbms_output.put_line(resta);
    numero1 :=4;
    numero2 :=8;
    dbms_output.put_line(restarNumEnteros(numero1,numero2));
end;
/
--Ejercicio10
declare
    nota number (2,1) := &nota;
begin
    
    if nota >=0 and nota <5 then
        dbms_output.put_line('Suspenso');
    elsif nota >=5 and nota < 6 then
        dbms_output.put_line('Aprobado');
    elsif nota >=6 and nota < 7 then
        dbms_output.put_line('Bien');
    elsif nota >=7 and nota < 9 then
        dbms_output.put_line('Notable');
    elsif nota >=9 and nota < 10 then
        dbms_output.put_line('Sobresaliente');
    else
            dbms_output.put_line('El valor introducido es incorrecto');
    end if;
    
end;
/
--Ejercicio11
declare
  numero number (3,1) := &numero;
begin
    case
        when numero < 5 then
            dbms_output.put_line('Suspenso');
        when numero between 5 and 5.9 then
            dbms_output.put_line('Aprobado');
        when numero between 6 and 6.9 then
            dbms_output.put_line('Bien');
        when numero between 7 and 8.9 then
            dbms_output.put_line('Notable');
        when numero between 9 and 10 then
            dbms_output.put_line('Sobresaliente');
        else
            dbms_output.put_line('El valor introducido es incorrecto');
    end case;
end;
/

--Ejercicio12
declare
    GolesCasa int := &GolesCasa;
    GolesFuera int := &GolesFuera;
begin
    if GolesCasa>GolesFuera then
        dbms_output.put_line('El equipo casa ha ganado');
    elsif GolesCasa<GolesFuera then
        dbms_output.put_line('El equipo visitante ha ganado');
    else
        dbms_output.put_line('El resultado del partido ha sido empate');
    end if;
end;
/