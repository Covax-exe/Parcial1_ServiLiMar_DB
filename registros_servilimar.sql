-- Ciudades
INSERT INTO Ciudad (nombre_ciudad, codigo_postal) VALUES
('Cali','760001'),('Palmira','763531'),('Buga','763041'),
('Tuluá','763022'),('Jamundí','764001'),('Yumbo','760501'),
('Buenaventura','764501'),('Cartago','762021'),('Popayán','190001'),('Pasto','520001');

-- Usuarios
INSERT INTO Usuario (nombre,apellido,tipo_usuario,condicion_especial,ciudad_id) VALUES
('Laura','Pérez','Cliente','Embarazo',1),
('Carlos','Gómez','Cliente','Adulto mayor',2),
('Andrea','López','Empleado','Ninguna',3),
('Luis','Martínez','Proveedor','Ninguna',4),
('Sofía','Ríos','Cliente','Silla de ruedas',5),
('Mateo','Torres','Empleado','Ninguna',6),
('Camila','García','Cliente','Ninguna',7),
('Julián','Ramírez','Cliente','Embarazo',8),
('Valentina','Reyes','Cliente','Ninguna',9),
('Andrés','Mora','Empleado','Ninguna',10);

-- Servicios
INSERT INTO Servicio (nombre, descripcion, estado) VALUES
('Atención al cliente','Atención personalizada a usuarios','Activo'),
('Entrega de artículos','Entrega de paquetes o documentos','Activo'),
('Recepción de artículos','Recepción de materiales o productos','Activo'),
('Consultoría','Asesorías personalizadas','Activo'),
('Despacho','Envío de mercancías','Activo'),
('Soporte técnico','Asistencia con sistemas','Activo'),
('Reclamaciones','Gestión de reclamos','Activo'),
('Pagos','Atención de pagos o facturación','Activo'),
('Capacitación','Entrenamientos o cursos','Activo'),
('Visitas técnicas','Soporte en campo','Activo');

-- Empleados
INSERT INTO Empleado (usuario_id, cargo, departamento) VALUES
(3,'Asesor','Atención'),(6,'Técnico','Soporte'),(10,'Supervisor','Logística'),
(3,'Consultor','Consultoría'),(6,'Auxiliar','Entregas'),(10,'Operador','Reclamaciones'),
(3,'Analista','Pagos'),(6,'Instructor','Capacitación'),(10,'Ingeniero','Visitas'),(3,'Administrador','General');

-- Turnos
INSERT INTO Turno (usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado, nombre_servicio) VALUES
(1,1,1,'2025-10-18','08:00','08:30','Activo','Atención al cliente'),
(2,2,5,'2025-10-18','08:30','09:00','Activo','Entrega de artículos'),
(3,3,6,'2025-10-18','09:00','09:30','Activo','Recepción de artículos'),
(4,4,4,'2025-10-18','09:30','10:00','Activo','Consultoría'),
(5,5,3,'2025-10-18','10:00','10:30','Activo','Despacho'),
(6,6,2,'2025-10-18','10:30','11:00','Activo','Soporte técnico'),
(7,7,7,'2025-10-18','11:00','11:30','Activo','Reclamaciones'),
(8,8,8,'2025-10-18','11:30','12:00','Activo','Pagos'),
(9,9,9,'2025-10-18','12:00','12:30','Activo','Capacitación'),
(10,10,10,'2025-10-18','12:30','13:00','Activo','Visitas técnicas');

-- Notificaciones
INSERT INTO Notificacion (usuario_id, medio, mensaje, estado) VALUES
(1,'correo','Turno confirmado para atención al cliente','Enviado'),
(2,'sms','Su turno para entrega de artículos ha sido asignado','Enviado'),
(3,'correo','Turno de recepción confirmado','Enviado'),
(4,'teléfono','Turno de consultoría confirmado','Enviado'),
(5,'correo','Turno de despacho activo','Enviado'),
(6,'sms','Soporte técnico asignado','Enviado'),
(7,'correo','Turno de reclamaciones confirmado','Enviado'),
(8,'correo','Turno de pagos confirmado','Enviado'),
(9,'sms','Turno de capacitación listo','Enviado'),
(10,'correo','Turno de visitas técnicas programado','Enviado');
