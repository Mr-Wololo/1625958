--- 1. SELECTS AVANZADOS

SELECT (Alumno.idAlumno), (Alumno.nomCompletoAlumno), (Carrera.nomCarrera) FROM Carrera JOIN Alumno  ON Carrera.idCarrera = Alumno.idCarrera 

SELECT (Maestro.idMaestro), (Maestro.nomCompletoMaestro), (Materia.nomMateria) FROM Maestro JOIN Materia ON Maestro.idMaestro = Materia.idMaestro

SELECT (Materia.nomMateria), (Materia.idSemestre), (Carrera.nomCarrera) FROM Carrera JOIN Materia ON Carrera.idCarrera = Materia.idCarrera

SELECT * FROM Dia	  JOIN Horario ON Dia.idDia = Horario.idDia

SELECT * FROM Maestro JOIN Horario ON Maestro.idMaestro = Horario.idMaestro

SELECT * FROM Materia JOIN Horario ON Materia.idMateria = Horario.idMateria

SELECT mat.*, mae.idMaestro, mae.nomCompletoMaestro FROM Materia mat
LEFT JOIN Maestro mae on mat.idMaestro = mae.idMaestro

SELECT mat.*, mae.idMaestro, mae.nomCompletoMaestro, car.idCarrera, car.nomCarrera, car.planEstudios FROM Materia mat
LEFT JOIN Maestro mae on mat.idMaestro = mae.idMaestro
LEFT JOIN Carrera car on mat.idCarrera = car.idCarrera


--- 2. SELECTS BASICOS
SELECT COUNT(*) AS 'Materias LSTI' FROM Materia WHERE IDCarrera = 1

SELECT COUNT(*) AS 'Materias LCC'  FROM Materia WHERE IDCarrera = 2

SELECT COUNT(*) AS 'Materias LF'   FROM Materia WHERE IDCarrera = 3

SELECT COUNT(*) AS 'Materias LM'   FROM Materia WHERE IDCarrera = 4

SELECT COUNT(*) AS 'Materias LNAD' FROM Materia WHERE IDCarrera = 5

SELECT COUNT(*) AS 'Materias LA'   FROM Materia WHERE IDCarrera = 6 

SELECT COUNT(*) AS 'Total Materias' FROM Materia

SELECT COUNT(*) FROM Materia WHERE IDCarrera = 6

SELECT COUNT(*) FROM Maestro

SELECT * FROM Alumno WHERE estatusAlumno = 'A'
