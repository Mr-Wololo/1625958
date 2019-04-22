  CREATE TABLE RegistroTrigger(
     id INT PRIMARY KEY,
	 Registro varchar(50),
     fecha varchar(50)
  );
  GO

  CREATE TRIGGER Trigger_Registro_INSERT ON Alumno
    for INSERT
    AS
    BEGIN
		INSERT INTO RegistroTrigger VALUES((SELECT COUNT(*) FROM RegistroTrigger) + 1,'Se agregó el ID' + STR((SELECT idAlumno FROM inserted)),GETDATE());
    END
GO

  CREATE TRIGGER Trigger_Registro_DELETE ON Alumno
    for DELETE
    AS
    BEGIN
		INSERT INTO RegistroTrigger VALUES((SELECT COUNT(*) FROM RegistroTrigger) + 1,'Se agregó el ID' + STR((SELECT idAlumno FROM deleted)),GETDATE());
    END
GO

  CREATE TRIGGER Trigger_Registro_UPDATE ON Alumno
    for INSERT
    AS
    BEGIN
		INSERT INTO RegistroTrigger VALUES((SELECT COUNT(*) FROM RegistroTrigger) + 1,'Se agregó el ID' + STR((SELECT idAlumno FROM inserted)),GETDATE());
    END
GO

CREATE PROCEDURE sp_vista1
AS
SELECT * FROM Vista1
GO

EXEC sp_Vista1
GO

CREATE PROCEDURE sp_vista2
AS
SELECT * FROM vista2
GO

EXEC sp_vista2
GO

CREATE PROCEDURE sp_vista3
AS
SELECT * FROM vista3
GO

EXEC sp_vista3
GO

CREATE PROCEDURE sp_vista4
AS
SELECT * FROM vista4
GO

EXEC sp_vista4
GO

CREATE PROCEDURE sp_vista5
AS
SELECT * FROM vista5
GO

EXEC sp_vista5
GO

CREATE PROCEDURE sp_vista6
AS
SELECT * FROM vista6
GO

EXEC sp_vista6
GO

CREATE PROCEDURE sp_vista7
AS
SELECT * FROM vista7
GO

EXEC sp_vista7
GO