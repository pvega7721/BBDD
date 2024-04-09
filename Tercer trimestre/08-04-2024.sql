--Bucles
set serveroutput on;
declare
    i int :=0;
begin
    loop
        if i<10 then
            dbms_output.put_line(i);
        elsif i := 10 then
            exit;
        end if;
        i:= i+1;
    end loop;
end;
/

declare
    i int :=0;
begin
    loop
        exit when i >= 10;
        dbms_output.put_line(i);
        i:= i+1; -- No i++
    end loop;
end;
/
--Ejercicio13
declare 
    i int :=0;
begin
    loop
        exit when i > 20;
        dbms_output.put_line(i);
        i:= i+1;
    end loop;
end;
/
--Ejercicio14
declare
    i int :=0;
begin
    loop
        dbms_output.put_line(i);
        if i >= 20 then
        exit;
        end if;
        i := i+1;
    end loop;
end;
/
--Ejercicios


--Registros y tablas
--Ejercicio1
declare
    type tPersona is record(
        codigo number,
        nombre varchar(100),
        edad int
    );
    type tMascota is record(
        nombre varchar(100),
        propietario tPersona
    );
    persona1 tPersona;
    persona2 tPersona;
    mascota1 tMascota;
begin
    persona1.codigo := 1;
    persona1.nombre := 'Pedro';
    persona1.edad := 25;
    mascota1.propietario := persona1;
    mascota1.nombre := 'Oye tu';
    dbms_output.put_line('Mostrar los datos de personas');

    dbms_output.put_line(persona1.codigo||'|'||persona1.nombre||'|'||persona1.edad);
    dbms_output.put_line(persona2.codigo||'|'||persona2.nombre||'|'||persona2.edad);
    dbms_output.put_line('Mostrar los datos de mascotas');

    dbms_output.put_line(mascota1.nombre||'|'||mascota1.propietario.codigo||'|'||mascota1.propietario.nombre||'|'||mascota1.propietario.edad);
end;
/
--Quiero que me hagáis un registro tDept con la escritura de la tabla DEPT
declare
    type tDept is record(
        deptno dept.deptno%type,
        dname dept.deptno%type,
        loc dept.deptno%type
    );
    departamento tDept;
begin
    select dname into departamento.dname from dept where deptno = 40;
    select * into departamento from dept where deptno = 40;
    dbms_output.put_line(departamento.dname);
    dbms_output.put_line(departamento.deptno);
end;
/

--Ejercicio2
declare
    type tPersona
begin

end;




