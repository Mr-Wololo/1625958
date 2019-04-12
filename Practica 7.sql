
--- VISTAS
CREATE VIEW Vista1 AS
SELECT  (Alumno.idAlumno), (Alumno.nomCompletoAlumno), (Carrera.nomCarrera) FROM Carrera JOIN Alumno  ON Carrera.idCarrera = Alumno.idCarrera 
SELECT * FROM Vista1

CREATE VIEW Vista2 AS
SELECT (Maestro.idMaestro), (Maestro.nomCompletoMaestro), (Materia.nomMateria) FROM Maestro JOIN Materia ON Maestro.idMaestro = Materia.idMaestro
SELECT * FROM Vista2

CREATE VIEW Vista3 AS
SELECT (Materia.nomMateria), (Materia.idSemestre), (Carrera.nomCarrera) FROM Carrera JOIN Materia ON Carrera.idCarrera = Materia.idCarrera
SELECT * FROM Vista3

CREATE VIEW Vista4 AS
SELECT * FROM Dia JOIN Horario ON Dia.idDia = Horario.idDia
SELECT * FROM Vista4

CREATE VIEW Vista5 AS
SELECT * FROM Maestro JOIN Horario ON Maestro.idMaestro = Horario.idMaestro
SELECT * FROM Vista5

CREATE VIEW Vista6 AS
SELECT * FROM Materia JOIN Horario ON Materia.idMateria = Horario.idMateria
SELECT * FROM Vista6

CREATE VIEW Vista7 AS
SELECT mat.*, mae.idMaestro, mae.nomCompletoMaestro 
FROM Materia mat
LEFT JOIN Maestro mae on mat.idMaestro = mae.idMaestro
SELECT * FROM Vista7

CREATE VIEW Vista8 AS
SELECT mat.*, mae.idMaestro, mae.nomCompletoMaestro, car.idCarrera, car.nomCarrera, car.planEstudios 
FROM Materia mat
LEFT JOIN Maestro mae on mat.idMaestro = mae.idMaestro
LEFT JOIN Carrera car on mat.idCarrera = car.idCarrera
SELECT * FROM Vista8

CREATE VIEW Vista9 AS
SELECT COUNT(*) AS 'Materias LSTI' FROM Materia WHERE IDCarrera = 1
SELECT * FROM Vista9

CREATE VIEW Vista10 AS
SELECT COUNT(*) AS 'Materias LCC'  FROM Materia WHERE IDCarrera = 2
SELECT * FROM Vista10