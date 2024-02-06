select * from futbolistas;
select * from equipos;
select * from partidos;

select * from partidos, equipos;
select * from equipos join partidos on equipos.estadio = partidos.estadio;

select futbolistas.nombre, equipos.nombre from futbolistas, equipos where futbolistas.id_equipo = equipos.id;

--Cross join devuelve todas las combinaciones posibles entre ambas tablas
select futbolistas.nombre, equipos.nombre from futbolistas cross join equipos;

select * from dept natural join emp;

select futbolistas.nombre, equipos.nombre from futbolistas join equipos using (id_equipo);

select futbolistas.nombre, equipos.nombre from futbolistas join equipos on futbolistas.id_equipo = equipos.id_equipo;

select futbolistas.nombre, futbolistas.apellidos, equipos.nombre from futbolistas join equipos on futbolistas.id_equipo = equipos.id_equipoz where futbolistas.posicion = 'DEFENSA';
select futbolistas.nombre, futbolistas.apellidos, equipos.nombre from futbolistas left join equipos on futbolistas.id_equipo = equipos.id_equipo;
select futbolistas.nombre, futbolistas.apellidos, equipos.nombre from futbolistas right join equipos on futbolistas.id_equipo = equipos.id_equipo;

select salario "EUROS" from futbolistas union select presupuesto from equipos;

select * from equipos;
select * from partidos;

select estadio from equipos intersect select estadio from partidos;
select estadio from equipos minus select estadio from partidos;