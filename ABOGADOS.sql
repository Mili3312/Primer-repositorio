CREATE TABLE Cliente (
    DNI VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(200),
	telefono  VARCHAR (20)
);

CREATE TABLE Asunto (
    numero_expediente SERIAL PRIMARY KEY,
    periodo_inicio DATE,
    periodo_finalizacion DATE,
    estado VARCHAR(50),
    DNI_cliente VARCHAR(20) REFERENCES Cliente(DNI)
	
);

CREATE TABLE Procurador (
    id_procurador SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
	DNI_Procurador VARCHAR (20)
    DNI_cliente VARCHAR(20) REFERENCES Cliente(DNI)FOREIGN KEY
);

