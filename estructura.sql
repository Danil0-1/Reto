-- Active: 1749997252291@@127.0.0.1@3307@Taller
CREATE TABLE paciente (
    paciente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    documentacion VARCHAR(50),
    telefono VARCHAR(12)
);

CREATE TABLE dentista(
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255)
);

CREATE TABLE cita (
    cita_id INT AUTO_INCREMENT PRIMARY KEY,
    staff VARCHAR (255),
    paciente VARCHAR(255),
    dia DATE,
    hora TIME
);

CREATE TABLE