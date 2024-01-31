    drop table coches cascade constraints;
    create table coches(
        id int, 
        matricula varchar(10),
        num_cilindros int,
        num_ruedas int,
        id_marca int --spoiler, será fk en el futuro
    );
    --Hemos decidido que pk sea id
    alter table coches
        add constraint idcoche primary key(id);
        
--Quiero hacer lo mismo que antes pero más rápido, me da igual el nombre de la restricción
drop table coches cascade constrants;
create table coches (
    id int primary key,
    matricula varchar(10),
    num_cilindros int,
    num_ruedas int,
    nuevocampo varchar2(50),
    id_marca int
);
create table marcas(
    referencia int primary key,
    nombre varchar2(100)
);
--Cómo se hace una FK
--1º el campo fk de una tabla tiene que ser pk en otra
--¿PK? referencia es pk en marcas
--¿FK? id_marca es fk en coches porque es el mismio campo que referencia en marcas, donde es pk
alter table coches
    add foreign key (id_marca) references marcas(referencia); 