set serveroutput on;

/*
Ejercicio 7
Declarar una tabla de números y asignarle con un bucle for los números del 1 al 10. Además de
asignar el valor dentro del bucle, mostrar el valor de la tabla por pantalla en cada iteración.
*/
declare
    type tipoTablaNum is table of int index by binary_integer;
    valTablaNum tipoTablaNum; --valTablaNum(1) := 1; valTablaNum(2):=2; ...
begin
    for i in 1..10 loop
        valTablaNum(i):=i;
        dbms_output.put_line(valTablaNum(i));
    end loop;
end;
/

/*Declarar una tabla de ‘personas’. Donde ‘personas’ es un tipo registro que 
almacena nombre, apellido1 y apellido2. Asignarle valores para una persona e 
imprimirlos por pantalla.*/

declare
    --Creamos un registro que sera el tipo de dato a usar dentro de la tabla
    type personas is record (
        nombre VARCHAR2(50),
        apellido1 VARCHAR2(50),
        apellido2 VARCHAR2(50)
        );
    --Creamos la tabla para guardar cada registro
    type tTabla is table of personas index by binary_integer;
    
    --Declaramos una variable del tipo tTabla
    tablaPersonas tTabla;
begin
    tablaPersonas(1).nombre := 'Inma';
    tablaPersonas(1).apellido1 := 'Garcia';
    tablaPersonas(1).apellido2 := 'Garcia';
    dbms_output.put_line(tablaPersonas(1).nombre ||' '|| tablapersonas(1).apellido1 ||' '|| tablapersonas(1).apellido2);
end;
/

/*Sobre el ejercicio 7: 
1. Utilizar la función COUNT para devolver el número de elementos. 
2. Recorrerlo con FIRST Y LAST. 
3. Eliminar el último de la tabla y devolver el número total de elementos. 
4. Preguntar si existe valor en la posición 10.*/

declare
    type tipoTablaNum is table of int index by binary_integer;
    --Declaramos una variable del tipo tTabla
    valTablaNum tipoTablaNum;
    
    
begin
    for i in 1..10 loop
        valTablaNum(i):=i;
        dbms_output.put_line(valTablaNum(i));
    end loop;
    --1
    dbms_output.put_line('Número de elementos '||valTablaNum.count);
    
    --2
    for j in valTablaNum.first..valTablaNum.last loop
    dbms_output.put_line(valTablaNum(j));
    end loop;
    
    --3
    valTablaNum.delete(valTablaNum.last);
    dbms_output.put_line(valTablaNum.count);
    
    --4
    if not (valTablaNum.exists(10)) then
        dbms_output.put_line('No existe la posición 10');
    else
        dbms_output.put_line('Existe la posición 10');
    end if;
end;
/

/*Se quiere mostrar por pantalla los datos de ciertos empleados (tabla emp). 
Se pide: 
A. Se pedirá al usuario por la entrada de plsql que introduzca dos valores 
integer que coincidan con dos empnos de la tabla emp, y se guardarán en una tabla 
de integers. 
B. Se debe crear una tabla que contendrá como valores todos los campos 
de las filas de emp cuyo empno coincida con los de la tabla anterior. Puedes usar 
registros o %rowtype. 
C. Recorre la tabla anterior mostrando por la salida los 
valores de cada columna de los dos registros. 
NOTA: debes usar las funciones 
FIRST, LAST, COUNT, etc. para los índices de tus bucles Usa por ejemplo empno 
7839 y 7698.*/

declare
    --A
     val1 emp.empno%type := &Dime_empno;
     val2 emp.empno%type := &Dime_empno;

     type tTablaVal is table of emp.empno%type index by binary_integer;
     tabla1 tTablaVal;
     
     --B
     type tTabla2 is table of emp%rowtype index by binary_integer;
     tabla2 tTabla2;
begin 
    --A
    tabla1(1) := val1;
    tabla1(2) := val2;
    
    --B
    /*tabla2(1).empno :='';
    tabla2(1).ename :='';
    tabla2(1).job :='';
    tabla2(1).mgr :='';
    tabla2(1).hiredate :='';
    tabla2(1).sal :='';
    tabla2(1).comm :='';
    tabla2(1).deptno :=''; esto seria hacerlo uno a uno, en vez de eso lo recorremos*/
    
    for i in tabla1.first..tabla1.last loop
        select * into tabla2(i) from emp where empno = tabla1(i);
    end loop;
    
    --C
    for j in tabla2.first..tabla2.last loop
        dbms_output.put_line(tabla2(j).empno);
        dbms_output.put_line(tabla2(j).ename);
        dbms_output.put_line(tabla2(j).job);
        dbms_output.put_line(tabla2(j).mgr);
        dbms_output.put_line(tabla2(j).hiredate);
        dbms_output.put_line(tabla2(j).sal);
        dbms_output.put_line(tabla2(j).comm);
        dbms_output.put_line(tabla2(j).deptno);
    end loop;
end;
/







