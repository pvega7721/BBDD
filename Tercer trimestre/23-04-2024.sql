--Ejercicio4
declare
    --cursor datosEstudiantes is select * from estudiantes;
    --filaEstudiante estudiantes%rowtype;
    cursor datosEstudiantes is 
        select nombre,apellidos,dni 
            from estudiantes
            order by apellidos,nombre;
    nombreEstudiante estudiantes.nombre%type;
    apellidosEstudiante estudiantes.apellidos%type;
    dniEstudiante estudiantes.dni%type;
begin
    open datosEstudiantes;
    loop
        fetch datosEstudiantes into nombreEstudiante,apellidosEstudiante,dniEstudiante;
        exit when datosEstudiantes%notfound;
        dbms_output.put_line(apellidosEstudiante||', '||nombreEstudiante||', DNI: '||dniEstudiante);      
    end loop;
    close datosEstudiantes;
end;
/
--Ejercicio5
declare
    cursor datos is select * from estudiantes;
    fila estudiantes%rowtype;
    contador int :=0;
begin
    open datos;
        fetch datos into fila;
        while datos%found loop
            contador := contador +1;
            dbms_output.put_line(fila.nombre || '-' || fila.fecha_nacimiento);
            fetch datos into fila;
        end loop;
    close datos;
    dbms_output.put_line('Total = ' || contador);
end;
/

--Ejercicio 6
declare
    cursor datos1 is select * from estudiantes;
    fila estudiantes%rowtype;
    contador int :=0;
begin
        for fila in datos1 loop
            contador := contador +1;
            dbms_output.put_line(fila.nombre||fila.apellidos||fila.fecha_nacimiento);
        end loop;
    dbms_output.put_line('Total: ' || contador);
end;
/

--Ejercicio7
declare
    vNombre estudiantes.nombre%type := '&nombre';
    cursor cEstudiantes is select nombre,apellidos from estudiantes where upper(nombre) = upper (vNombre);
    filaEstudiante estudiantes%rowtype;
    total int :=0;
begin
    for filaEstudiante in cEstudiantes loop
        total := total +1;
        dbms_output.put_line(upper(filaEstudiante.apellidos) || ', ' || upper(filaEstudiante.nombre));
    end loop;
    if total = 0 then
        dbms_output.put_line('NO HAY DATOS');
    end if;
end;
/

-- con while
declare
    vNombre estudiantes.nombre%type := '&nombre';
    cursor cEstudiantes is select nombre,apellidos from estudiantes where upper(nombre) = upper (vNombre);
    filaEstudiante estudiantes%rowtype;
    total int :=0;
begin
    open cEstudiantes
    for filaEstudiante in cEstudiantes loop
        total := total +1;
        dbms_output.put_line(upper(filaEstudiante.apellidos) || ', ' || upper(filaEstudiante.nombre));
    end loop;
    if total = 0 then
        dbms_output.put_line('NO HAY DATOS');
    end if;
end;
/
