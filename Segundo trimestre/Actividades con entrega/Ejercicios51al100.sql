--51. Qu� d�a de la semana se contrat� a cada empleado.
select to_char(hiredate, 'day') "D�a de contrataci�n" from emp;
--52. Calcular la paga de beneficios que corresponde a cada empleado (3 salarios mensuales incrementados un: 10% para PRESIDENT, 20% para los MANAGER, 30% para el resto).
--53. Cuantos d�as han pasado desde el 25 julio de 1992.
--54. Seleccionar el nombre de cada empleado junto al nombre del departamento en el que est�.
select emp.ename "Nombre del empleado", dept.dname Departamento from emp join dept on emp.deptno = dept.deptno;
--55. Seleccionar el nombre y puesto de cada empleado junto al nombre del departamento al que pertenece y la localizaci�n del departamento.
select emp.ename "Nombre del empleado", emp.job Puesto, dept.dname "Departamento" , dept.loc "Localizaci�n" from emp join dept on emp.deptno = dept.deptno;
--56. Seleccionar el nombre de cada empleado, el nombre de! departamento al que pertenece, y el codigo de departamento del empleado.
select emp.ename "Nombre del empleado", dept.dname "Departamento" , dept.deptno "C�digo de departamento" from emp join dept on emp.deptno = dept.deptno;
--57. Listar el nombre del empleado y el nombre de su jefe.
select * from dept;
select * from emp;
--58. Listar el nombre del empleado y el nombre de su jefe. Incluir empleados que no tengan jefe.
--59. Seleccionar nombre del empleado, nombre del jefe, fechas contrato del trabajador y del jefe, de forma que la fecha de contrato del empleado sea anterior a la de su jefe.
--60. Seleccionar nombre del empleado, nombre del jefe, salarios del trabajador y del jefe, de forma que el sueldo del empleado sea inferior a la mitad del salario de su jefe.
--61. Seleccionar las distintas ubicaciones de los departamentos.
select distinct loc from dept;
--62. Seleccionar la ubicaci�n y el nombre empleado. Incluir tambi�n las ubicaciones de departamentos sin empleados.
select dept.loc Localizaci�n, emp.ename Empleado from dept join emp on dept.deptno = emp.deptno;
--63. Seleccionar el nombre de los empleados, y el departamento al que pertenecen, para los empleados que ganan menos de 1000$.
select emp.ename Nombre, dept.deptno Departamento from emp join dept on emp.deptno = dept.deptno where emp.sal <1000 ;
--64. Seleccionar el nombre del empleado, y el departamento al que pertenecen, para los empleados que ganan m�s de 1000$.
select emp.ename Nombre, dept.deptno Departamento from emp join dept on emp.deptno = dept.deptno where emp.sal >1000 ;
--65. Consultar todos los valores de la tabla emp.
select * from emp;
--66. Listar el nombre, el oficio y sueldo de los empleados.
select ename, job, sal from emp;
--67. Calcular el sueldo anual que percibe cada empleado.
select ename Nombre, (sal*12) "Salario anual" from emp;
--68. Consultar los datos de la tabla DEPTS.
select * from dept;
--69. Listar los diferentes puestos de los empleados sin repetir.
select distinct job from emp;
--70. Listar en una sola columna el nombre y el puesto de cada empleado.
select ename || ' ' || job "Nombre y puesto" from emp;
--71. Listar todas las columnas de la tabla EMP en una �nica columna, separando cada campo por comas.
select * from emp;
select empno || ' ' || ename || ' ' || job || ' ' || mgr || ' ' || hiredate || ' ' || sal || ' ' || comm || ' ' || deptno "Todas las columnas en una" from emp;
--72. Listar el nombre y sueldo de los empleados que ganan m�s de 2000$.
select ename, sal from emp where sal > 2000;
--73. Listar el nombre y c�digo de de departamento del empleado con id=30.
select ename, deptno from emp where deptno = 30;




--74. Listar el nombre y sueldo de los empleados que NO ganan entre 5000 y 12000 d�lares. Muestra el sueldo con el s�mbolo de $ delante de la cifra.        PREGUNTAR A INDALECIO
select ename, sal from emp where sal not between 5000 and 12000;



--75. Listar el nombre, puesto y fecha contrato de los empleados contratados entre el 20 febrero 1981 y el 1 de mayo de 1981. Ordenar por fecha descendente.
--76. Listar el nombre y el cod departamento de los empleados pertenecientes a los departamentos 20 o 40.
--77. Listar el nombre (alias: Empleado) y sueldo (alias: Salario mensual) de los empleados pertenecientes a los departamentos 20 o 40, que ganen entre 2000 y 4000 d�lares.
--78. Listar el nombre y fecha contrato de empleados contratados el a�o 1984.
--79. Listar el nombre y el puesto de los empleados que no tengan jefe asignado.
--80. Listar el nombre, sueldo y % comisi�n de los empleados que cobran comisi�n. Ordenar por salario y comisi�n, de forma que los m�s altos salgan primero.
--81. Listar el nombre de los empleados que tengan una 'a' en la 3a letra del nombre.
--82. Listar el nombre de los empleados que tengan una 'a' y una 'e' en el nombre.
--83. Listar el nombre, puesto y sueldo de los empleados 'CLERK' o 'SALESMAN', y con salario distinto de: 2500, 3500 y 7000.
--84. Listar el nombre (alias: Empleado), sueldo (alias: Salario mensual) y nombre del departamento de todos los empleados cuya comisi�n sea mayor de 400.
--85. Listar el nombre y salario de los empleados, de forma que est�n separados por una l�nea de puntos, y que de extremo a extremo haya 30 caracteres (por ejemplo: "KING......................5000").
--86. Listar los nombres de los empleados, reemplazando la letra 'a' por un '1'.
--87. Obtener la fecha del sistema (hoy) con alias: Fecha en el formato por defecto (sin tocar nada).
--88. Listar el id, nombre, salario de los empleados, y adem�s otra columna con el salario incrementado un 15% su valor y redondeado (alias: Nuevo salario).
--89. Listar el id, nombre, salario de los empleados, el salario incrementado un 15% redondeado (alias: Nuevo salario) y adem�s otra columna con la cuant�a del incremento (alias: Incremento).
--90. Listar el nombre y longitud del nombre de los empleados que empiecen por A, o M. (Los nombres tendr�n la inicial en may�scula y el resto en min�sculas).
--91. Listar el nombre y n�mero de meses trabajados, redondeando al entero superior. Ordenar por n�mero de meses trabajados, de menor a mayor.
--92. Componer una frase con el nombre, salario actual y el triple del salario de los empleados. Por ejemplo: "KING gana 5000 mensuales, pero querr�a ganar 15000" (alias: Sueldos so�ados).
--93. Listar el nombre y salario de los empleados, rellenando por la izquierda hasta 15 caracteres con el s�mbolo "$".
--94. Listar nombre, fecha contrato y fecha revisi�n contrato de los empleados, sabiendo que la revisi�n ser� el lunes siguiente a la fecha que cumple 6 meses de trabajo en la empresa. Formatear esta fecha de acuerdo con el ejemplo: 'Lunes, 12th de noviembre de 2005'.
--95. Listar nombre, fecha contrato y d�a de la semana en que fueron contratados los empleados, ordenando por d�a de la semana, de forma que queden ordenados por lunes, martes, mi�rcoles, jueves, viernes, s�bado y domingo.
--96. Listar nombre y comisi�n de los empleados. En el caso de que no gane comisi�n, sacar la frase "Sin comisi�n".
--97. Listar nombre de los empleados, y una tira de asteriscos, de forma que haya un asterisco por cada 1000$ (redondeada) que gana el empleado. Titula la columna 'Empleado y su salario'. Ordenar esta
--columna de forma que los que m�s ganan aparezcan primero. Los nombres deben quedar ajustados a la longitud del nombre m�s largo. Ej.: "KING..:  *****"
--98. Listar los distintos nombres de puestos de los empleados, de forma que : PRESIDENT se traduzca por A, MANAGER por B, ANALYST por C, CLERK por D y el resto por E.
--99. Listar todos los campos de la tabla DEPT.
--100. Seleccionar el nombre de departamento, y el nombre de la ciudad donde est�.