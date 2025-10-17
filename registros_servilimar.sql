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