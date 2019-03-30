--- Selects Avanzaados

SELECT * FROM Alumno JOIN Carrera ON Alumno.idCarrera = Carrera.idCarrera 

SELECT * FROM Maestro JOIN Materia ON Maestro.idMaestro = Materia.idMaestro

SELECT * FROM Materia JOIN Carrera ON Materia.idCarrera = Carrera.idCarrera

SELECT * FROM Materia

--- 1. SELECT BASICOS

SELECT * FROM Alumno WHERE sexoAlumno = 'm'

SELECT COUNT(*) AS 'Materias LSTI' FROM Materia WHERE IDCarrera = 1

SELECT COUNT(*) AS 'Materias LCC' FROM Materia WHERE IDCarrera = 2

SELECT COUNT(*) AS 'Materias LF' FROM Materia WHERE IDCarrera = 3

SELECT COUNT(*) AS 'Materias LM' FROM Materia WHERE IDCarrera = 4

SELECT COUNT(*) AS 'Materias LNAD' FROM Materia WHERE IDCarrera = 5

SELECT COUNT(*) AS 'Materias LA' FROM Materia WHERE IDCarrera = 6

SELECT COUNT(*) AS 'Total Materias' FROM Materia

SELECT COUNT(*) FROM Materia WHERE IDCarrera = 6

SELECT COUNT(*) FROM Maestro

SELECT * FROM Alumno WHERE estatusAlumno = 'A'
