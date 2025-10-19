CREATE TABLE Ciudad (
  ciudad_id SERIAL PRIMARY KEY,
  nombre_ciudad VARCHAR(50) NOT NULL,
  codigo_postal VARCHAR(10)
);

CREATE TABLE TipoNotificacion (
    tipo_notificacion_id SERIAL PRIMARY KEY,
    nombre_tipo_notificacion VARCHAR(50) UNIQUE NOT NULL 
);

CREATE TABLE Servicio (
  servicio_id SERIAL PRIMARY KEY,
  nombre_servicio VARCHAR(100) NOT NULL,
  descripcion TEXT,
  estado VARCHAR(20)
);

CREATE TABLE Usuario (
  usuario_id SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  tipo_usuario VARCHAR(30),
  condicion_especial VARCHAR(50),
  ciudad_id INT,
  telefono VARCHAR(20),
  email VARCHAR(100),
  sms VARCHAR(20),
  FOREIGN KEY (ciudad_id) REFERENCES Ciudad(ciudad_id)
);

CREATE TABLE Empleado (
  empleado_id SERIAL PRIMARY KEY,
  usuario_id INT UNIQUE NOT NULL,
  cargo VARCHAR(50),
  departamento VARCHAR(50),
  FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id)
);

CREATE TABLE Turno (
  turno_id SERIAL PRIMARY KEY,
  usuario_id INT NOT NULL,
  servicio_id INT NOT NULL,
  empleado_id INT NOT NULL,
  fecha DATE NOT NULL,
  hora_inicio TIME NOT NULL,
  hora_fin TIME,
  estado VARCHAR(20),
  FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
  FOREIGN KEY (servicio_id) REFERENCES Servicio(servicio_id),
  FOREIGN KEY (empleado_id) REFERENCES Empleado(empleado_id)
);

CREATE TABLE Notificacion (
  notificacion_id SERIAL PRIMARY KEY,
  usuario_id INT NOT NULL,
  tipo_notificacion_id INT NOT NULL,
  mensaje TEXT,
  fecha_envio TIMESTAMP DEFAULT NOW(),
  estado VARCHAR(50),
  FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
  FOREIGN KEY (tipo_notificacion_id) REFERENCES TipoNotificacion(tipo_notificacion_id)
);

