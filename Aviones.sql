CREATE TABLE Piloto (
    codigo_piloto SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    horas_vuelo INTEGER,
    base VARCHAR(100)
);

CREATE TABLE MiembrosTripulacion (
    codigo_miembro SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    base VARCHAR(100)
);

CREATE TABLE Avion (
    codigo_avion SERIAL PRIMARY KEY,
    tipo VARCHAR(100),
    base_revisiones VARCHAR(100)
);
CREATE TABLE Vuelos (
    numero_vuelo VARCHAR(50) PRIMARY KEY,
    origen VARCHAR(100),
    destino VARCHAR(100),
    hora TIMESTAMP,
    avion_codigo INTEGER REFERENCES Avion(codigo_avion),
    piloto_codigo INTEGER REFERENCES Piloto(codigo_piloto)
);



