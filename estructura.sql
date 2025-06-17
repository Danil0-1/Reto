-- Active: 1749997252291@@127.0.0.1@3307@Taller
CREATE TABLE paciente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    documentacion VARCHAR(50),
    telefono VARCHAR(12),
    FOREIGN KEY (solicitud_id) REFERENCES solicitud(id)
);

CREATE TABLE dentista(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    FOREIGN KEY (especialidad_id) REFERENCES especialidad(id)
);

CREATE TABLE consultorio (
    id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE cita (
    cita_id INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (staff_id) REFERENCES dentista(id),
    FOREIGN KEY (paciente_id) REFERENCES paciente(id),
    FOREIGN KEY (consultorio_id) REFERENCES consultorio(id),
    dia DATE,
    hora TIME
);  

CREATE TABLE solicitud (
    id INT AUTO_INCREMENT PRIMARY KEY,
    solicitud VARCHAR (255)
);    

CREATE TABLE especialidad (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    especializacion VARCHAR (255)
)
