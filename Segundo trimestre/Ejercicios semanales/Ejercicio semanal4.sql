select * from futbolistas;
select * from equipos;
select * from partidos;
--Ejercicio 1
select count(*) from partidos where id_equipo_casa = 1;

--Ejercicio2
select e.nombre from futbolistas f join equipos e on f.id_equipo = e.id where f.peso = (select min(peso) from futbolistas);

--Ejercicio3
select 'El futbolista ' || f.nombre || ' juega en el equipo ' || e.nombre from futbolistas f left join equipos e on f.id_equipo = e.id;
