select * from futbolistas;

--Ejercicio1 
select initcap(nombre) "Nombre", 
concat((presupuesto-250000), ' euros') "2022-23", 
concat(presupuesto, ' euros') "2023-24", 
concat((presupuesto*1.1), ' euros') "2024-25"
from equipos order by presupuesto desc; 