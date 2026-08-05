
CREATE DATABASE Hospital;
GO

CREATE TABLE Paciente(
IdPaciente INT PRIMARY KEY,
Apellido1 VARCHAR(25) NOT NULL,
Apellido2 VARCHAR (25),
FechaNaci DATE NOT NULL
);

CREATE TABLE expediente (
idExpe INT PRIMARY KEY,
FechaApertura DATE NOT NULL,
TipoSangre VARCHAR (5) NOT NULL,
IdPaciente INT NOT NULL,

CONSTRAINT FK_expedient_paciente
     FOREIGN KEY (IdPaciente)
        REFERENCES Paciente(IdPaciente)
);
