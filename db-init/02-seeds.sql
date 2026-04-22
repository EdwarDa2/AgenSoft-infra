-- 1. Catálogos básicos (Roles y Estados)
INSERT INTO Roles (nombre) VALUES 
('Admin'), 
('Paciente');

INSERT INTO Estados_Cita (nombre) VALUES 
('Pendiente'), 
('Aceptada'), 
('Rechazada');

-- 2. Horarios Base (Lunes a Viernes de 09:00 a 14:00)
INSERT INTO Horarios_Base (dia_semana, hora_inicio, hora_fin, es_laboral) VALUES 
(1, '09:00:00', '14:00:00', TRUE),
(2, '09:00:00', '14:00:00', TRUE),
(3, '09:00:00', '14:00:00', TRUE),
(4, '09:00:00', '14:00:00', TRUE),
(5, '09:00:00', '14:00:00', TRUE);

-- 3. Usuarios de prueba (Admin y un Paciente)
-- Nota: Las contraseñas deben ser hasheadas en una app real
INSERT INTO Usuarios (nombre, email, password, rol_id) VALUES 
('Admin Principal', 'admin@citas.com', 'admin123', 1),
('Juan Pérez', 'juan.perez@email.com', 'paciente123', 2);

-- 4. Perfil de Paciente (Vinculado al usuario Juan Pérez)
INSERT INTO Pacientes (usuario_id, nombre_completo, telefono, informacion_medica) VALUES 
(2, 'Juan Pérez García', '9611234567', 'Alérgico a la penicilina');

-- 5. Bloques de Calendario (Espacios disponibles para hoy)
INSERT INTO Bloques_Calendario (fecha, hora_inicio, hora_fin, estado_id) VALUES 
(CURRENT_DATE, '09:00:00', '10:00:00', 2), -- Aceptada (Ocupado)
(CURRENT_DATE, '10:00:00', '11:00:00', 1), -- Pendiente (Libre)
(CURRENT_DATE, '11:00:00', '12:00:00', 1);

-- 6. Una Cita de ejemplo
INSERT INTO Citas (paciente_id, bloque_id, motivo_consulta, estado_id) VALUES 
(1, 1, 'Revisión general de rutina', 2);