--Ejercicio 1
--Obtén el nombre de todos los futbolistas de la base de datos.
select nombre from futbolistas;
--Ahora queremos saber la posición que ocupan estos futbolistas (aunque se repitan los valores).
select posicion from futbolistas;
--Se quiere saber las posiciones existentes por lo que se requiere la posición de los futbolistas sin que se repitan.
select distinct posicion from futbolistas;

--Ejercicio 2
--Obtén todas las posiciones posibles (diferentes) de los futbolistas bajo el encabezado "Demarcaciones".
select distinct posicion "Demarcaciones" from futbolistas;
--Muestra todos los datos almacenados de todos los futbolistas.
select * from futbolistas;
/*Se quieren todos los datos de los futbolistas pero con los siguientes alias:
-id
-nombre
-apellidos
-fecha de nacimiento
-posición
-salario actual
-identificador equipo actual
*/
select 
    ID "id",
    nombre "nombre",
    apellidos "apellidos",
    fecha_nacimiento "fecha de nacimiento",
    posicion "posición",
    salario "salario actual",
    id_equipo "identificador equipo actual"
from futbolistas;
select * from equipos, futbolistas where id_equipo = equipos.id;
