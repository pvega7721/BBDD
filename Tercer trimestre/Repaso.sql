set serveroutput on;

--PDF 1, construcción de guiones

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

--PDF 2, Registros y Tablas

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
        profesor Tpersona
    );
     profesor1 Tpersona;
--2.2
    alumno1 alumno;
    alumno2 alumno;
begin
    dbms_output.put_line('Ejercicio2');
    profesor1.codigo := 002;
    profesor1.nombre := 'José';
    profesor1.edad := 43;
    alumno1.nombre := 'Juan';
    alumno1.profesor := profesor1;
    alumno2.nombre := 'Luis';
    alumno2.profesor.codigo := 003;
    dbms_output.put_line('Alumno1 nombre: ' || alumno1.nombre);
    dbms_output.put_line('Profesor2 nombre: ' || alumno1.profesor.nombre);
    dbms_output.put_line('Alumno2 nombre: ' || alumno2.nombre);
    dbms_output.put_line('Código del profesor del alumno2: ' || alumno2.profesor.codigo);
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
    dbms_output.put_line('Departamento: ' || fila.deptno || ' Nombre: ' || fila.dname || ' Ubicación: ' || fila.loc);
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
    dbms_output.put_line('Departamento: ' || filaCompleta.deptno || ' Nombre: ' || filaCompleta.dname || ' Ubicación: ' || filaCompleta.loc);end;
/

--Ejercicio6
declare
    filaCompleta2 dept%rowtype;
begin
    dbms_output.put_line('Ejercicio6');
    select * into filaCompleta2 from dept where deptno = 40;
    dbms_output.put_line('Departamento: ' || filaCompleta2.deptno || ' Nombre: ' || filaCompleta2.dname || ' Ubicación: ' || filaCompleta2.loc);
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
    dbms_output.put_line('Posición ' || i || ': ' || i);
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
                            --Al imprimir algún dato de la tabla, hay que especificar también la posición.
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
    dbms_output.put_line('Posición ' || i || ': ' || i);
    end loop;
    dbms_output.put_line('Núumero de elementos en la tabla: ' || tabla1.count);
    dbms_output.put_line('Primera posición: ' || tabla1.first);
    dbms_output.put_line('Última posición: ' || tabla1.last);
    tabla1.delete(tabla1.last);
    dbms_output.put_line('Último elemento borrado');
    dbms_output.put_line('Núumero de elementos en la tabla: ' || tabla1.count);
    if tabla1.exists(10) then
    dbms_output.put_line('El elemento 10 existe');
    else
    dbms_output.put_line('El elemento 10 no existe');
    end if;
end;
/

--Ejercicio10
--7839 y 7698
declare
    --Pedimos al usuario dos números
    num1 integer := &Introduce_Numero1;
    num2 integer := &Introduce_Numero2;
    --Creamos tabla integer
    type tNumeros is table of integer index by binary_integer;
    --Creamos tabla con los valores de la tabla emp
    type tEmp is table of emp%rowtype index by binary_integer;
    --Creamos vairables para guardar los datos de las tablas
    numeros tNumeros;
    emp_result tEmp;
begin
    --Guardamos los números introducidos por el usuario en las variables de la tabla
    numeros(1) := num1;
    numeros(2) := num2;
    --recorremos la tabla para guardar los registros en las variables
    for i in 1 ..numeros.count loop
        for emp1 in (select * from emp where empno = numeros(i)) loop
            emp_result(emp1.empno) := emp1;
        end loop;
    end loop;
    --Mostrar los resultados
    for i in 1..emp_result.count loop
        DBMS_OUTPUT.PUT_LINE('EMPNO: ' || emp_result(i).empno);
        DBMS_OUTPUT.PUT_LINE('ENAME: ' || emp_result(i).ename);
        DBMS_OUTPUT.PUT_LINE('JOB: ' || emp_result(i).job);
        DBMS_OUTPUT.PUT_LINE('MGR: ' || emp_result(i).mgr);
        DBMS_OUTPUT.PUT_LINE('HIREDATE: ' || emp_result(i).hiredate);
        DBMS_OUTPUT.PUT_LINE('SAL: ' || emp_result(i).sal);
        DBMS_OUTPUT.PUT_LINE('COMM: ' || emp_result(i).comm);
        DBMS_OUTPUT.PUT_LINE('DEPTNO: ' || emp_result(i).deptno);
    end loop;
end;
/

--PDF 3, Cursores

-- Ejercicio1
declare
    datosEstudiante estudiantes%rowtype;
begin
    dbms_output.put_line('Ejercicio1');
    select * into datosEstudiante from estudiantes where dni = '75812952P';
    dbms_output.put_line('Nombre y apellidos del estudiante: ' || datosEstudiante.nombre || ' ' || datosEstudiante.apellidos);
exception
    when NO_DATA_FOUND then
        dbms_output.put_line('No hay datos');
end;
/
--Ejercicio2
declare 
    datosEstudiante estudiantes%rowtype;  
begin
    dbms_output.put_line('Ejercicio2');
    select * into datosEstudiante from estudiantes where nombre = 'Blanca';
    dbms_output.put_line('DNI= ' || datosEstudiante.dni || ' Apellidos: ' || datosEstudiante.apellidos);

exception
    when others then
        dbms_output.put_line('Error');     
end;
/
--Ejercicio 3
declare
    cursor datos is select nombre, apellidos, dni from estudiantes;
    vNombre estudiantes.nombre%type;
    vApellidos estudiantes.Apellidos%type;
    vdni estudiantes.dni%type;
begin
    dbms_output.put_line('Ejercicio3');
    open datos;
    fetch datos into vNombre, vApellidos, vdni;
    dbms_output.put_line('Fila 1 - Nombre: ' || vNombre || ', Apellidos: ' || vApellidos || ', DNI: ' || vdni);
    fetch datos into vNombre, vApellidos, vdni;
    dbms_output.put_line('Fila 2 - Nombre: ' || vNombre || ', Apellidos: ' || vApellidos || ', DNI: ' || vdni);
    close datos;

end;
/
--Ejercicio4
declare
    cursor datos is select distinct nombre, apellidos, dni from estudiantes;
    vNombre estudiantes.nombre%type;
    vApellidos estudiantes.Apellidos%type;
    vdni estudiantes.dni%type;
    nFilas integer :=0;
begin
    dbms_output.put_line('Ejercicio4');
    open datos;
        loop
            fetch datos into vNombre, vApellidos, vdni;
            dbms_output.put_line('Nombre: ' || vNombre || ', Apellidos: ' || vApellidos || ', DNI: ' || vdni);
            nFilas := nFilas+1;
            exit when datos%notfound;
        end loop;
    close datos;
    dbms_output.put_line('Filas totales: ' || nFilas);
end;
/
--Ejercicio5
declare
    cursor nombreFecha is select nombre,fecha_nacimiento from estudiantes;
    vNombre estudiantes.nombre%type;
    vFechaNacimiento estudiantes.fecha_nacimiento%type;
    nFilas integer :=0;
begin
    dbms_output.put_line('Ejercicio5');
    open nombreFecha;
        fetch nombreFecha into vNombre, vFechaNacimiento;
        while nombreFecha%found loop
            fetch nombreFecha into vNombre, vFechaNacimiento;
            dbms_output.put_line('Nombre: ' || vNombre || ', Fecha de nacimiento: ' || vFechaNacimiento);
            nFilas := nFilas +1;
        end loop;
    close nombreFecha;
    dbms_output.put_line('Total filas; ' || nFilas);
end;
/
--Ejercicio6
declare
    cursor datosEstudiantes is select nombre, apellidos, fecha_nacimiento from estudiantes;
    nFilas integer := 0;
begin
    dbms_output.put_line('Ejercicio6');
    for i in datosEstudiantes loop
        dbms_output.put_line('Nombre: ' || i.nombre || ', Apellidos: ' || i.apellidos ||', Fecha de nacimiento: ' || i.fecha_nacimiento);
        nFilas := nFilas +1;
    end loop;
    dbms_output.put_line('Total filas; ' || nFilas);
end;
/
--Ejercicio7
declare
    vNombre estudiantes.nombre%type;
    vApellidos estudiantes.apellidos%type;
    cursor datosEstudiantes is select apellidos, nombre from estudiantes where nombre = vNombre;
begin
    vNombre := '&Nombre';
    dbms_output.put_line('Ejercicio7');
    open datosEstudiantes;
        fetch datosEstudiantes into vNombre, vApellidos;
        while datosEstudiantes%found loop
            dbms_output.put_line(upper(vApellidos) || ', ' ||  upper(vNombre));
            fetch datosEstudiantes into vApellidos, vNombre;
        end loop;
    close datosEstudiantes;
exception
    when no_data_found then
        dbms_output.put_line('No hay datos');
end;
/
--Ejercicio8
declare
    vNombre estudiantes.nombre%type;
    vApellidos estudiantes.apellidos%type;
    cursor datosEstudiantes is select apellidos, nombre from estudiantes where nombre = vNombre;
begin
    vNombre := '&Nombre';
    for estudante in datosEstudiantes loop
        dbms_output.put_line(upper(estudante.apellidos) || ', ' ||  upper(estudante.nombre));
    end loop;
exception
    when NO_DATA_FOUND then
        dbms_output.put_line('No hay datos');
end;
/
--PDF 4 Excepciones
/*
Ejemplo
declare
    --Declaraciones
Begin
    --Ejecucion
Exception
    when NO_DATA_FOUND then -- se ejecuta si ocurre la excepción NO_DATA_FOUND
    when ZERO_DIVIDE then -- se ejecuta si ocurre la excepción ZERO_DIVIDE
    when OTHERS then -- see ejecuta si ocurre una excepción de un tipo no tratado en los anteriores
end;

DECLARE
    x NUMBER :=0;
    y NUMBER := 3;
    res NUMBER;
BEGIN
    res:=y/x;
    DBMS_OUTPUT.PUT_LINE(res);
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('No se puede dividir por cero') ;
    WHEN OTHERS THEN
    --SQLCODE devuelve el código del error producido
    --SQLERRM devuelve el mensaje de oracle asociado al número de error
        DBMS_OUTPUT.PUT_LINE('Ocurrió el error' || SQLCODE ||' mensaje ' || SQLERRM) ;
END;
*/

--Ejercicio1
declare
    num1 number := &num1;
    num2 number := 0;
    division number;
begin
    division := num1/num2;
    dbms_output.put_line('El resto es: ' || division);
exception
    when others then
        dbms_output.put_line('Ocurrió el error' || SQLCODE || ' mensaje: ' || SQLERRM);
end;
/
--Ejercicio2
declare
    nAlumnos number;
    no_alumnos exception;
begin
    select count(*) into nAlumnos from estudiantes;
    if nAlumnos = 0 then
        raise no_alumnos;
    end if;
    dbms_output.put_line('Hay ' || nAlumnos || ' alumnos');
exception
    when no_alumnos then 
        dbms_output.put_line('No hay alumnos');
end;
/
--Ejercicio3
declare
    nAlumnos number;
    no_alumnos exception;
    muchos_alumnos exception;
begin
    select count(*) into nAlumnos from estudiantes;
    if nAlumnos = 0 then
        raise no_alumnos;
    elsif nAlumnos >= 5 then
        raise muchos_alumnos;
    end if;
    dbms_output.put_line('Hay ' || nAlumnos || ' alumnos');
exception
    when no_alumnos then 
        dbms_output.put_line('No hay alumnos');
    when muchos_alumnos then 
        dbms_output.put_line('Hay demasiados alumnos');
end;
/

--PDF5 Procedimientos y funciones
--Ejercicio1
create or replace procedure consultarEmpleado(
    v_empno in emp.empno%type, --Parámetro de entrada con el número del empleado 
    v_ename out emp.ename%type, --Parámetro de salida con el nombre del empleado 
    v_job out emp.job%type --Parámetro de salida con el puesto del empleado 
    )
is
begin
    select ename, job into v_ename, v_job from emp where empno = v_empno;
    dbms_output.put_line('El puesto del empleado ' || v_ename || ' es ' || v_job );
exception
    when NO_DATA_FOUND then
        dbms_output.put_line('NO se han encontrado datos');
end;
/
--Ejercicio2
declare
--Hay que decalrar las variables que les vamos a pasar al procedimento, tanto las de entrada como las de salida.
    id number := 7839;
    nombre varchar2(50);
    puesto varchar2(50);
begin
    consultarEmpleado(id, nombre, puesto);
end;
/

--Ejercicio3
drop procedure consultarEmpleado;

--Ejercicio4y5
create or replace procedure is_today(
    --Variable donde guardaremos la fecha actual para pasarsela por parámetro al procedimiento
    fechaHoy out date
)
is
begin
    --Guarda la fecha de hoy (sysdate) en la variable fechaHoy, creada anteriormente.
    select sysdate into fechaHoy from dual;
    dbms_output.put_line('Hoy es ' || fechaHoy);
end;
/

declare 
    fecha date;
begin
    is_today(fecha);
end;
/

--Ejercicio6 
create or replace function nombreEstudiante (e_codigo in number) return varchar
is
    --Variable que guarda el resultado
    v_resultado varchar2(100);
    e_nombre varchar2(50);
    e_apellidos varchar2(50);
begin
    --Insertamos los nombres y a pellidos de los estudiantes en las variables 
    select nombre, apellidos into e_nombre, e_apellidos from estudiantes where  codigo = e_codigo;
    v_resultado := 'Nombre: ' || e_nombre || ', apellidos: ' || e_apellidos;
    return v_resultado;
exception
    when NO_DATA_FOUND then
        dbms_output.put_line('Código incorrecto');
end;
/
declare
    --Variable a pasarle a la funcion
    e_codigo number := &Introduce_codigo_alumno;
    --Variable que guarda lo que devuelva la funcion
    e_nombreYApellidos varchar2(100);
begin
--Guardamos el resultado de la funcion en la variable y la imprimimos
    e_nombreYApellidos := nombreEstudiante(e_codigo);
    dbms_output.put_line(e_nombreYApellidos);
end;
/

--Ejercicio7
create or replace function totalEstudiantes return number
is
    --variable que guardará el numero de estudiantes;
    nEstudiantes number;
begin
    --insertamos el numero de estudiantes en la variable y la devolvemos
    select count(*) into nEstudiantes from estudiantes;
    return nEstudiantes;
end;
/
declare
    --variable donde se guardará el resultado de la funcion
    nEstudiantes number;
begin
    nEstudiantes := totalEstudiantes;
    dbms_output.put_line('EN la tabla hay ' || nEstudiantes || ' estudiantes');
end;
/
--PDF6 Paquetes
--Ejercicio1
--Creamos la cabecera del paquete, declarando todas las funciones 
Create or replace package operaciones
is 
    --Funcion que suma dos numeros dados
    function sumar (num1 in number, num2 in number) return number;
    --Funcion que resta dos numeros dados
    function restar (num1 in number, num2 in number) return number;
    --Funcion que devuelve si un número es positivo o no.
    function positivo (num in number) return boolean;
end operaciones;
/
--Creamos el cuerpo del paquete, donde se implementarán las funciones
create or replace package body operaciones
is
    --Implementacion de la funcion sumar
    function sumar (num1 in number, num2 in number) return number
    is
    begin
        return num1+num2;
    end sumar;
    --Implementacion de la funcion restar
    function restar (num1 in number, num2 in number) return number
    is
    begin
        return num1-num2;
    end restar;
    --Implementación de la funcion positivo
    function positivo (num in number) return boolean
    is
    begin
        if num>0 then
            return true;
        else  
        return false;
        end if;
    end positivo;
end operaciones;
/
--Ahora crearemos un bloque para probarlo.
declare 
    resultado_suma number;
    resultado_resta number;
    num_positivo boolean;
begin
    resultado_suma := operaciones.sumar(3, 4);
        dbms_output.put_line('El resultado de la operación es ' || resultado_suma);
    resultado_resta := operaciones.restar(7, 4);
        dbms_output.put_line('El resultado de la operación es ' || resultado_resta);
    num_positivo := operaciones.positivo(4);
        if num_positivo then
            dbms_output.put_line('El número es positivo');
        else
            dbms_output.put_line('El número es negativo');
        end if;
end;
/

--Ejercicio2
--Creamos la cabecera del paquete, declarando los procedimientos/funciones
Create or replace package gestionEMP
is 
    procedure nuevoEmpleado(
    vEmpno in emp.empno%type,
    vEname in emp.ename%type,
    vJob in emp.job%type,
    vMgr in emp.mgr%type,
    vHiredate in emp.hiredate%type,
    vSal in emp.sal%type,
    vComm in emp.comm%type,
    vDeptno in emp.deptno%type
    );
end gestionEMP;
/
create or replace package body gestionEMP
is
   procedure nuevoEmpleado(
    vEmpno in emp.empno%type,
    vEname in emp.ename%type,
    vJob in emp.job%type,
    vMgr in emp.mgr%type,
    vHiredate in emp.hiredate%type,
    vSal in emp.sal%type,
    vComm in emp.comm%type,
    vDeptno in emp.deptno%type
    ) 
    is
    
    begin
        insert into emp values (vEmpno, vEname, vJob, vMgr, vHiredate, vSal, vComm, vDeptno);
        dbms_output.put_line('Registro insertado correctamente');
    end nuevoEmpleado;
end;
/
--Creo un bloque para llamar al paquete anterior
declare
begin
    gestionEMP.nuevoEmpleado(8000, 'JUAN', 'CLERK', 7902, TO_DATE('01/05/22', 'DD/MM/YY'), 1500, NULL, 20);
end;
/