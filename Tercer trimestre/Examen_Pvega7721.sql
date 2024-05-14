set serveroutput on;
select * from futbolistas;

--Ejercicio1------------------------------------------------------------------ 
--Ejercicio1.5
Create or replace package funcFutbolistas
is 
--Ejercicio1.1 
    function insertarFutbolista (
        vId in futbolistas.id%type,
        vNombre in futbolistas.nombre%type,
        vApellidos in futbolistas.nombre%type,
        vFechaNacimiento in futbolistas.fecha_nacimiento%type,
        vPosicion in futbolistas.posicion%type,
        vSalario in futbolistas.salario%type,
        vIdEquipo in futbolistas.id_equipo%type,
        vAltura in futbolistas.altura%type,
        vPeso in futbolistas.peso%type,
        existeFutbolista number
        ) return varchar;
--Ejercicio1.2
    function actualizaFutbolista (
        vId in futbolistas.id%type,
        vNombre in futbolistas.nombre%type,
        vApellidos in futbolistas.nombre%type,
        vFechaNacimiento in futbolistas.fecha_nacimiento%type,
        vPosicion in futbolistas.posicion%type,
        vSalario in futbolistas.salario%type,
        vIdEquipo in futbolistas.id_equipo%type,
        vAltura in futbolistas.altura%type,
        vPeso in futbolistas.peso%type,
        existeFutbolista number
        ) return varchar;
--Ejercicio1.3
    procedure borrarFutbolista(
       vId in futbolistas.id%type
        --existeFutbolista number
       -- no_jugador exception
    );
--Ejercicio1.4
    procedure mostrarFutbolistasEquipo(
        vNombreEntrada in equipos.nombre%type,
        vNombreSalida out futbolistas.nombre%type,
        vApellidos out futbolistas.apellidos%type
    );
end funcFutbolistas;
/

create or replace package body funcFutbolistas
is
--Ejercicio1.1 
    function insertarFutbolista (
        vId in futbolistas.id%type,
        vNombre in futbolistas.nombre%type,
        vApellidos in futbolistas.nombre%type,
        vFechaNacimiento in futbolistas.fecha_nacimiento%type,
        vPosicion in futbolistas.posicion%type,
        vSalario in futbolistas.salario%type,
        vIdEquipo in futbolistas.id_equipo%type,
        vAltura in futbolistas.altura%type,
        vPeso in futbolistas.peso%type,
        existeFutbolista number
        ) return varchar
        is
        begin
          --  select count(*) into existeFutbolista from futbolistas where id = vId;
          --  if existeFutbolista > 0 then
                insert into futbolistas values (vId, vNombre, vApellidos, vFechaNacimiento, vPosicion, vSalario, vIdEquipo, vAltura, vPeso);
                return 'Futbolista creado correctamente';
          --  else
          --      return 'Ese ID ya existe';
          --  end if;
        end insertarFutbolista;
--Ejercicio1.2
     function actualizaFutbolista (
        vId in futbolistas.id%type,
        vNombre in futbolistas.nombre%type,
        vApellidos in futbolistas.nombre%type,
        vFechaNacimiento in futbolistas.fecha_nacimiento%type,
        vPosicion in futbolistas.posicion%type,
        vSalario in futbolistas.salario%type,
        vIdEquipo in futbolistas.id_equipo%type,
        vAltura in futbolistas.altura%type,
        vPeso in futbolistas.peso%type,
        existeFutbolista number
        ) return varchar
        is
        begin
         --  select count(*) into existeFutbolista from futbolistas where id = vId;
         --  if existeFutbolista < 0 then
                update futbolistas set nombre = vNombre, apellidos = vApellidos, fecha_nacimiento = vFechaNacimiento, posicion = vPosicion, salario = vSalario, id_equipo = vIdEquipo, altura = vAltura, peso = vPeso where id = vId;
                return 'Futbolista editado correctamente';
          --  else
          --      return 'NO existe ese ID';
          --  end if;
        end actualizaFutbolista;
--Ejercicio1.3
    procedure borrarFutbolista(
        vId in futbolistas.id%type
       -- existeFutbolista in number
     --   no_jugador in exception
    )
    is
    begin
        --  select count(*) into existeFutbolista from futbolistas where id = vId;
         --  if existeFutbolista > 0 then
                delete from futbolistas where id = vId;
                dbms_output.put_line('Futbolista borrado correctamente');
          --  else
          --     raise no_jugador;
          --  end if;
  --  exception
      --  when no_jugador then
         --   dbms_output.put_line('NO existe ese ID');
    end borrarFutbolista;
--Ejercicio1.4
    procedure mostrarFutbolistasEquipo(
            vNombreEntrada in equipos.nombre%type,
            vNombreSalida out futbolistas.nombre%type,
            vApellidos out futbolistas.apellidos%type
        )
        is
        begin
            select nombre, apellidos into vNombreSalida, vApellidos from futbolistas where futbolistas.id_equipo = vNombreEntrada;
            dbms_output.put_line('Nombre: ' || vNombreSalida || 'Apellidos' || vApellidos);
        end;
end funcFutbolistas;
/

--Ejercicio1.6
declare
begin
    --No consigo llamarlos correctamente. No estoy poniendo bien algún dato y no se cuál es.
    --funcFutbolistas.insertarFutbolista('F00120', 'JOSE', 'SUAREZ', '02-04-2005 00:00:00', 'DEFENSA', 15000, 1, 169, 73.0);
    --funcFutbolistas.actualizaFutbolista('F00720', 'PABLO JESUS', 'CARO', '27-01-1988 00:00:00', 'DEFENSA', 200000, 3, 183, 84);
    funcfutbolistas.borrarfutbolista('F00220');
   -- funcfutbolistas.mostrarfutbolistasequipo(2);
end;
/
--Ejercicio1------------------------------------------------------------------
----Ejercicio3------------------------------------------------------------------
/*
    la primera vez que lo he ejecutado se ha ejecutado correctamente, luego me ha dicho que ya hay un objeto con ese valor asignado.
create function obtenerFutbolistasPorAnyo(anyo1 date, anyo2 date) return varchar
is
    vResultado varchar2(200);
    fNombre varchar2(50);
    fApellidos varchar2(50);
begin
    select nombre, apellidos into fNombre, fApellidos from futbolistas where fecha_nacimiento between anyo1 and anyo2;
    vResultado := 'Nombre: ' || fNombre || 'Apellidos: ' || fApellidos;
    return vResultado;
end;
/

declare
    anyo1 date := extract(years,to-date('12/12/1990');
    anyo2 date := extract(years,to_date('12/12/2005');
begin
    fNombreYApellidos := obtenerFutbolistasPorAnyo(anyo1, anyo2);
end;
/
*/
----Ejercicio3------------------------------------------------------------------
----Ejercicio2------------------------------------------------------------------

----Ejercicio2------------------------------------------------------------------