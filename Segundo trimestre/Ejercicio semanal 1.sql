--Ejercicio1
select * from partidos where fecha between '01-01-2020' and  '31-01-2020';

--Ejercicio2
select distinct resultado, arbitro from partidos;
select distinct arbitro from partidos;

--Ejercicio3
select id P, resultado P from partidos where resultado like '%-00';

--Ejericicio4
select id, arbitro, estadio from partidos order by estadio desc, arbitro, id desc;