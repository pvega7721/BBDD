--Actividad1
drop table estudiantes cascade constraints;
create table estudiantes(
        id int primary key,
        nombre varchar2(50),
        apellidos varchar2(100),
        edad int
    );
    
insert into estudiantes (id, nombre, apellidos) values (1,'Luis', 'Garcia');
insert into estudiantes (id, nombre) values (2, 'Pedro');
--Actividad2
insert into estudiantes (id, nombre) values (1, 'Luis', 'Garcia');
insert into estudiantes (id, nombre, apellidos, edad) values (3, 'Antonio', 'Dominguez', 21, 'Sevilla');
insert into estudiantes values (4, 'Pedro', 'Perez', 22);
alter table estudiantes
  add ciclo varchar2(50) default 'damdaw';
  
insert into estudiantes values (5, 'Pablo', 'Vega', 18, 'dam');
insert into estudiantes (id, nombre, apellidos, edad) values (6, 'Luisa', 'Fernandez', 28);
insert into estudiantes values (7, 'jose', 'alvarez', 25, 'asir');


create table 