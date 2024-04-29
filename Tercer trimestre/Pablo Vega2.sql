create or replace function insertaEmpleado (x varchar) return varchar
is
    numEmpleado integer := &NumeroEmpleado;
    nombreEmpleado varchar := '&NombreEmpleado';
    trabajo varchar := '&Puesto';
    jefe varchar := '&Jefe';
    fecha_contrato date := &fecha_contratacion;
    salario integer := &salario;
    comision integer := comision;
    numDepartamento integer := &numDepartamento;
begin
    if ((count(*) from emp where empno = numEmpleado) >1) then 
         dbms_output.put_line('No se puede crear, ya existe');  
    else 
        insert into emp
        values (numEmpleado, nombreEmpleado, trabajo,jefe,fecha_contrato,salario,comision,numDepartamento);
        dbms_output.put_line('Registro insertado correctamente');
    end if;
end;
/
select * from emp;