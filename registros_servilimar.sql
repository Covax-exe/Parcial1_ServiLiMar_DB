-- Ciudades
INSERT INTO Ciudad (nombre_ciudad, codigo_postal) VALUES
('Cali','760001'),('Palmira','763531'),('Buga','763041'),
('Tuluá','763022'),('Jamundí','764001'),('Yumbo','760501'),
('Buenaventura','764501'),('Cartago','762021'),('Popayán','190001'),('Pasto','520001');

-- Tipo Notificacion
INSERT INTO TipoNotificacion (nombre_tipo_notificacion) VALUES
('teléfono'),
('correo'),
('sms');

-- Servicios
INSERT INTO Servicio (nombre_servicio, descripcion, estado) VALUES
('Atención al cliente','Atención personalizada a usuarios','Activo'),
('Entrega de artículos','Entrega de paquetes o documentos','Activo'),
('Recepción de artículos','Recepción de materiales o productos','Activo'),
('Consultoría','Asesorías personalizadas','Activo'),
('Despacho','Envío de mercancías','Inactivo'),
('Soporte técnico','Asistencia con sistemas','Activo'),
('Reclamaciones','Gestión de reclamos','Activo'),
('Pagos','Atención de pagos o facturación','Activo'),
('Capacitación','Entrenamientos o cursos','Inactivo'),
('Visitas técnicas','Soporte en campo','Activo');

-- Usuarios
INSERT INTO Usuario (nombre, apellido, tipo_usuario, condicion_especial, ciudad_id, telefono, email, sms) VALUES
('Laura','Pérez','Cliente','Embarazo', 1, '3001112233', 'laura.perez@email.com', '3001112233'),
('Carlos','Gómez','Cliente','Adulto mayor', 2, '3004445566', 'carlos.gomez@email.com', '3004445566'),
('Andrea','López','Empleado', NULL, 3, '3111234560', 'andrea.lopez@servilimar.com', '3111234560'),
('Luis','Martínez','Proveedor', NULL, 4, '3007778899', 'luis.martinez@proveedor.net', '3007778899'),
('Sofía','Ríos','Cliente','Silla de ruedas', 5, '3121112233', 'sofia.rios@email.com', '3121112233'),
('Mateo','Torres','Empleado', NULL, 6, '3130001122', 'mateo.torres@servilimar.com', '3130001122'),
('Camila','García','Cliente', NULL, 7, '3145556677', 'camila.garcia@email.com', '3145556677'),
('Julián','Ramírez','Cliente','Embarazo', 8, '3009990011', 'julian.ramirez@email.com', '3009990011'),
('Valentina','Reyes','Cliente', NULL, 9, '3203334455', 'valentina.reyes@email.com', '3203334455'),
('Andrés','Mora','Empleado', NULL, 10, '3157778899', 'andres.mora@servilimar.com', '3157778899');

-- Empleados
INSERT INTO Empleado (usuario_id, cargo, departamento) VALUES
(3,'Asesor','Atención'),(6,'Técnico','Soporte'),(10,'Supervisor','Logística');

-- Turnos
INSERT INTO Turno (usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 1, 1,'2025-10-18','08:00','08:30','Atendido'),
(2, 2, 2,'2025-10-18','08:30','09:00','Atendido'),
(3, 3, 3,'2025-10-18','09:00','09:30','Atendido'),
(4, 4, 3,'2025-10-19','09:30', NULL,'Pendiente'),
(5, 5, 3,'2025-10-19','10:00', NULL,'Cancelado'),
(6, 6, 2,'2025-10-19','10:30','11:00','Atendido'),
(7, 7, 1,'2025-10-19','11:00','11:30','Atendido'),
(8, 8, 1,'2025-10-20','11:30','12:00','Atendido'),
(9, 9, 2,'2025-10-20','12:00','12:30','Atendido'),
(10, 10, 1,'2025-10-20','12:30','13:00','Atendido');

-- Notificaciones
INSERT INTO Notificacion (usuario_id, tipo_notificacion_id, mensaje, fecha_envio, estado) VALUES
(1, 2,'Turno confirmado para atención al cliente', '2025-10-17 17:00:00', 'Enviado'),
(2, 3,'Su turno para entrega de artículos ha sido asignado', '2025-10-17 19:30:00', 'Enviado'),
(3, 2,'Turno de recepción confirmado', '2025-10-18 10:00:00', 'Enviado'),
(4, 1,'Turno de consultoría confirmado', '2025-10-18 09:00:00', 'Enviado'),
(5, 2,'Turno de despacho activo', '2025-10-19 15:45:00', 'Enviado'),
(6, 3,'Soporte técnico asignado', '2025-10-20 11:30:00', 'Enviado'),
(7, 2,'Turno de reclamaciones confirmado', '2025-10-20 14:00:00', 'Enviado'),
(8, 2,'Turno de pagos confirmado', '2025-10-21 12:05:00', 'Enviado'),
(9, 3,'Turno de capacitación listo', '2025-10-21 18:00:00', 'Enviado'),
(10, 2,'Turno de visitas técnicas programado', '2025-10-21 17:30:00','Enviado');


