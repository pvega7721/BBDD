set serveroutput on;
--Ejercicio 6 registros y tablas
declare
    filacompleta2 dept%rowtype;
    --departamentoCodigo dept.deptno%type;
begin
    --select deptno, loc into filacompleta2.deptno,filacompleta2.loc from dept where deptno = 40;
    select deptno,loc into filacompleta2.deptno,filacompleta2.loc from dept where deptno = 40;
    dbms_output.put_line(filacompleta2.deptno);
    dbms_output.put_line(filacompleta2.dname);
    dbms_output.put_line(filacompleta2.loc);
    select*into filacompleta2 from dept where deptno = 40;
    dbms_output.put_line(filacompleta2.deptno);
    dbms_output.put_line(filacompleta2.dname);
    dbms_output.put_line(filacompleta2.loc);
end;
/
--Ejercicio 7
declare
    type tipoTablaNum is table of int index by binary_integer;
    valTablaNum tipoTablaNum; --valTablaNun(1) := 1; valTablaNum(2) :=2; ...
begin
    for i in 1..10 loop
    valTablaNum(i) :=i;
    dbms_output.put_line(valTablaNum(i));
    end loop;
    valTablaNum(22) :=1;
    dbms_output.put_line(valTablaNum(22));
    --dbms_output.put_line(valTabla-z<<<<<<Num(20));
end;
/

--Ejercicio 8
declare
    --Creamos el un registro que será el tipo de dato a usar dentro de los valores de la tabla
    type personas is record(
        nombre varchar(100),
        apellido1 varchar(100),
        apellido2 varchar(100)
        );
        --Creamos el tipo de dato tabla
        type tTabla is table of personas index by binary_integer;
        --Declaramos una variable del tipo tTabla
        tablaValores tTabla;
begin
    tablaValores(1).nombre :='Pepito';
    tablaValores(1).apellido1 := 'Garcia';
    tablavalores(1).apellido2 := 'Grillos';
    dbms_output.put_line(tablaValores(1).nombre || ' ' || tablaValores.apellido1 || ' ' || tablaValores(1).apellido2);
end;
/

--Ejercicio9
declare
    type tipoTablaNum is table of int index by binary_integer;
    valTablaNum tipoTablaNum;
begin
    for i in 1..10 loop
        valTablaNum(i):=i;
        dbms_output.put_line(valTablaNum(i));
    end loop;
    --1
    dbms_output.put_line(valTablaNum.count);
    --2
    for j in valTablaNum.first..valTablaNum.last loop
        dbms_output.put_line(valTablaNum(j));
    end loop;
    --3
    valTablaNum.delete(valTablaNum.last);
    dbms_output.put_line(valTablaNum.count);
    --4
    if not(valTablaNum.exists(10)) then
        dbms_output.put_line('No existe la posición 10');
    else
        dbms_output.put_line('Existe la posición 10');
    end if;
end;
/

--Ejercicio10
declare
    valor1 emp.empno%type := &empno1;
    valor2 emp.empno%type := &empno2;
    type tTabla1 is table of emp.empno%type index by binary_integer;
    tabla1 tTabla1;
    type tTabla2 is table of emp%rowtype index by binary_integer;
    tabla2 tTabla2;
begin
    tabla1(1) := valor1;
    tabla1(2) := valor2;
    for i in tabla1.first..tabla1.last loop
        select * into tabla2(i) from emp where empno = tabla1(i);
    end loop;
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