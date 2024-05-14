--Registros y Tablas
set serveroutput on;
--1.Declarar un tipo registro Tpersona con los siguientes campos: un código de tipo 
--numérico, un nombre de tipo cadena de 100 caracteres y la edad integer . Asignarle valor 
--a una variable de tipo Tpersona e imprimirlo por pantalla.

declare
--creamos un registro
    TYPE Tpersona IS RECORD (
--creamos los campos que forman el registro
        codigo integer,
        nombre varchar(100),
        edad integer
    ); 
--Inicializamos nuestro registro    
    persona1 Tpersona;
begin
--damos valores a los campos de nuestro registro
    persona1.codigo :=1;
    persona1.nombre :='Inma';
    persona1.edad :=25;
    dbms_output.put_line('Mostrar los datos');
    dbms_output.put_line(persona1.codigo||'|'||persona1.nombre||'|'||persona1.edad);
end;
/

--Anidacion, que el campo de un registro tenga que ver con otro registro
declare
--creamos un registro
    TYPE Tpersona IS RECORD (
--creamos los campos que forman el registro
        codigo integer,
        nombre varchar(100),
        edad integer
    ); 
    TYPE Tmascota IS RECORD (
        codigo number,
        nombre varchar(100),
        propietario Tpersona
--El campo propietario es del tipo Tpersona y tiene que ver con el anterior
    );
--Inicializamos nuestro registro    
    persona1 Tpersona;
    pajaro Tmascota;
begin
--damos valores a los campos de nuestro registro
    persona1.codigo :=1;
    persona1.nombre :='Inma';
    persona1.edad :=25;
    
    pajaro.codigo := 3;
    pajaro.nombre := 'Piticlina';
    pajaro.propietario := persona1;
    
    dbms_output.put_line('Mostrar los datos');
    dbms_output.put_line(persona1.codigo||'|'||persona1.nombre||'|'||persona1.edad);
    dbms_output.put_line(persona2.codigo||'|'||persona2.nombre||'|'||persona2.edad);
end;
/

--Quiero que me hagáis un registro tDept con la estructura de la tabla DEPT

DECLARE
    TYPE tDept IS RECORD (
--Tomamos los tipos de la tabla con el %type
        deptno dept.deptno%type,
        dname dept.dname%type,
        loc dept.loc%type
    );
    departamento tDept;
BEGIN
    select dname into departamento.dname from dept where deptno =40;
--nos traemos el nombre del departamento 40
    select * into departamento from dept where deptno =40; 
--esto se podria hacer porque nuestro registro tiene tantos campos como nuestra tabla
--si en el declare eliminamos un campo ya no podriamos hacerlo
    dbms_output.put_line(departamento.dname);
END;
/  

--2.1. Crea un registro tpersona igual que el del ejemplo de teoría. Después, crea otro registro 
--alumno que tenga como campos nombre varchar 100, y profesor tpersona.

declare
    TYPE Tpersona IS RECORD (
        codigo integer,
        nombre varchar(100),
        edad integer
    ); 
    TYPE alumno IS RECORD (
        nombre varchar2(100),
        profesor Tpersona
    );
    
    alumno1 alumno;
    persona1 Tpersona;
begin
    alumno1.nombre := 'ROCKET';
    alumno1.profesor.codigo := 0;
    alumno1.profesor.nombre := 'DRAX';
    alumno1.profesor.edad := 25;
    
    dbms_output.put_line('Nombre alumno: '||alumno1.nombre);
    dbms_output.put_line('Nombre profesor: '||alumno1.profesor.nombre);
end;
/

--Se quieren guardar todos los datos del departamento cuyo deptno es 30 en una variable del tipo 
--%rowtype llamada filacompleta. Muestra por la salida el valor de los distintos campos de filacompleta.

declare
    filacompleta dept%rowtype;
    filacompleta2 dept%rowtype;
begin
    select * into filacompleta from dept where deptno = 30;
    dbms_output.put_line(filacompleta.deptno);
    dbms_output.put_line(filacompleta.loc);
    
    select deptno, loc into filacompleta2.deptno, filacompleta2.loc from dept where deptno = 40;
--filacompleta2.deptno, esto actua como una variable donde se guarda un valor
end;/