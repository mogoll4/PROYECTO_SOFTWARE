CREATE TABLE Solicitud (
    ID_Solicitante INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Dirección VARCHAR(200),
    Teléfono VARCHAR(15)
);

CREATE TABLE Expediente (
    ID_Expediente INT PRIMARY KEY,
    Fecha_Creación DATE,
    Descripción TEXT,
    ID_Solicitante INT,
    FOREIGN KEY (ID_Solicitante) REFERENCES Solicitud(ID_Solicitante)
);

CREATE TABLE Investigador (
    ID_Investigador INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Especialidad VARCHAR(100)
);

CREATE TABLE Informe (
    ID_Informe INT PRIMARY KEY,
    Fecha_Informe DATE,
    Detalles TEXT,
    ID_Investigador INT,
    FOREIGN KEY (ID_Investigador) REFERENCES Investigador(ID_Investigador)
);

CREATE TABLE Resultados (
    ID_Resultados INT PRIMARY KEY,
    Descripción TEXT,
    Fecha_Resultados DATE,
    ID_Informe INT,
    FOREIGN KEY (ID_Informe) REFERENCES Informe(ID_Informe)
);

CREATE TABLE Evaluador (
    ID_Evaluador INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Cargo VARCHAR(100)
);

CREATE TABLE Aprobación (
    ID_Aprobación INT PRIMARY KEY,
    Estado VARCHAR(50),
    Fecha_Aprobación DATE,
    ID_Expediente INT,
    ID_Evaluador INT,
    FOREIGN KEY (ID_Expediente) REFERENCES Expediente(ID_Expediente),
    FOREIGN KEY (ID_Evaluador) REFERENCES Evaluador(ID_Evaluador)
);