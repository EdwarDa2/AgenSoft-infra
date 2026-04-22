-- 1. Catálogos (Sin dependencias)
CREATE TABLE Roles (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Estados_Cita (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Horarios_Base (
    id SERIAL PRIMARY KEY,
    dia_semana INT NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    es_laboral BOOLEAN DEFAULT TRUE
);

-- 2. Entidades Principales
CREATE TABLE Usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    rol_id INT NOT NULL REFERENCES Roles(id)
);

CREATE TABLE Pacientes (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL REFERENCES Usuarios(id),
    nombre_completo VARCHAR(150) NOT NULL,
    telefono VARCHAR(20),
    informacion_medica TEXT
);

CREATE TABLE Bloques_Calendario (
    id SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    estado_id INT NOT NULL REFERENCES Estados_Cita(id)
);

-- 3. Entidades Transaccionales
CREATE TABLE Citas (
    id SERIAL PRIMARY KEY,
    paciente_id INT NOT NULL REFERENCES Pacientes(id),
    bloque_id INT NOT NULL REFERENCES Bloques_Calendario(id),
    motivo_consulta TEXT,
    estado_id INT NOT NULL REFERENCES Estados_Cita(id),
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    actualizado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);