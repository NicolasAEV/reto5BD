--1 listar todos los pacientes fase 2 o 3
SELECT * FROM pacientes_covid;
SELECT * FROM pacientes_covid WHERE fase > 1;
SELECT * FROM pacientes_covid WHERE not fase = 1 ;
SELECT * FROM pacientes_covid WHERE fase BETWEEN 2 AND 3;
--2 promedio de edad de todos los pacientes en fase 1 (25+37)/2 = 31
SELECT AVG(edad) FROM pacientes_covid where fase = 1;
SELECT * FROM pacientes_covid where fase = 1;
--3 mostrar la mayor cantiadad de dias que lleva enfermo un paciente fase 3
SELECT MAX(dias_enfermo)FROM pacientes_covid WHERE fase = 3 ;
SELECT dias_enfermo FROM pacientes_covid WHERE fase = 3 ;
SELECT dias_enfermo FROM pacientes_covid WHERE fase = 3 AND rut = '13-3';
--4 mostrar el promedio de dias enfermos de pacientes fase 2
SELECT AVG(dias_enfermo) FROM pacientes_covid WHERE fase = 2 ;
--5 Mostrar los pacientes con edades entre 25 y 39 que esten en fase 1 o 3
SELECT * FROM pacientes_covid WHERE edad BETWEEN 25 AND 39 AND fase <> 2;
--6 mostrar todos los pacientes con rut terminado en numero que esten un hospital con s
SELECT * FROM pacientes_covid WHERE rut NOT LIKE '%K' AND hospital LIKE 'S%' ;
--7 MUESTRA EL PROMEDIO DE EDAD DE PACIENTES MUJERES (28+32+37+23+31)/5
SELECT AVG(edad) FROM pacientes_covid WHERE nombre IN ('Paula','Mariela','Patricia','Camila','Javiera');
--8 MUESTRA LA CANTIDAD TOTAL DE PACIENTES QUE ESTAN EN FASE 1 O 3
SELECT COUNT(*) FROM pacientes_covid WHERE fase IN (3,1);
SELECT COUNT(*) FROM pacientes_covid WHERE fase <> 2;


