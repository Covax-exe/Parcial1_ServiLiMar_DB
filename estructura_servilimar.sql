CREATE TABLE Ciudad (
  ciudad_id SERIAL PRIMARY KEY,
  nombre_ciudad VARCHAR(50),
  codigo_postal VARCHAR(10)
);

CREATE TABLE Usuario (
  usuario_id SERIAL PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  tipo_usuario VARCHAR(30),
  condicion_especial VARCHAR(50),
  ciudad_id INT REFERENCES Ciudad(ciudad_id)
);

CREATE TABLE Servicio (
  servicio_id SERIAL PRIMARY KEY,
  nombre VARCHAR(50),
  descripcion TEXT,
  estado VARCHAR(20)
);

CREATE TABLE Empleado (
  empleado_id SERIAL PRIMARY KEY,
  usuario_id INT REFERENCES Usuario(usuario_id),
  cargo VARCHAR(50),
  departamento VARCHAR(50)
);

CREATE TABLE Turno (
  turno_id SERIAL PRIMARY KEY,
  usuario_id INT REFERENCES Usuario(usuario_id),
  servicio_id INT REFERENCES Servicio(servicio_id),
  empleado_id INT REFERENCES Empleado(empleado_id),
  fecha DATE,
  hora_inicio TIME,
  hora_fin TIME,
  estado VARCHAR(20),
  nombre_servicio VARCHAR(50)
);

CREATE TABLE Notificacion (
  notificacion_id SERIAL PRIMARY KEY,
  usuario_id INT REFERENCES Usuario(usuario_id),
  medio VARCHAR(30),
  mensaje TEXT,
  fecha_envio TIMESTAMP DEFAULT NOW(),
  estado VARCHAR(20)
);
