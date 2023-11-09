CREATE TABLE Marcas (
    ID_Marca SERIAL PRIMARY KEY,
    Nombre VARCHAR(50)
);


CREATE TABLE Modelos (
    ID_Modelo SERIAL PRIMARY KEY,
    ID_Marca INT REFERENCES Marcas(ID_Marca),
    Nombre VARCHAR(100),
    Precio DECIMAL(10),
    Descuento DECIMAL(5),
    Potencia INT,
    Cilindrada INT
   
);


CREATE TABLE Equipo (
    ID_Equipo SERIAL PRIMARY KEY,
    Nombre VARCHAR(100)
);


CREATE TABLE Extra (
    ID_Extra SERIAL PRIMARY KEY,
    Nombre VARCHAR(100),
    Precio DECIMAL(10, 2)
);


CREATE TABLE ModeloEquipo (
    ID_Modelo INT REFERENCES Modelos(ID_Modelo),
    ID_Equipo INT REFERENCES Equipo(ID_Equipo),
    PRIMARY KEY (ID_Modelo, ID_Equipo)
);


CREATE TABLE ModeloExtras (
    ID_Modelo INT REFERENCES Modelos(ID_Modelo),
    ID_Extra INT REFERENCES Extras(ID_Extra),
    PRIMARY KEY (ID_Modelo, ID_Extra)
);


CREATE TABLE Automoviles (
    Bastidor VARCHAR(50) PRIMARY KEY,
    ID_Modelo INT REFERENCES Modelos(ID_Modelo),
    Disponible BOOLEAN
);


CREATE TABLE Concesionaria (
    ID_Concesionaria SERIAL PRIMARY KEY,
    Nombre VARCHAR(50)
);


CREATE TABLE ServicioOficial (
    ID_Servicio SERIAL PRIMARY KEY,
    ID_Concesionaria INT REFERENCES Concesionaria(ID_Concesionaria),
    Nombre VARCHAR(50),
    Domicilio VARCHAR(150),
    CUIT VARCHAR(20)
);


CREATE TABLE Vendedores (
    ID_Vendedor SERIAL PRIMARY KEY,
    ID_Concesionario INT REFERENCES Concesionaria(ID_Concesionaria),
    Nombre VARCHAR(50),
    DNI VARCHAR(20),
    Domicilio VARCHAR(150)
);


