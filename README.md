# 🧩 Parcial 1 – Base de Datos *Servicios LiMar*

## 📘 Descripción
Este proyecto implementa una **base de datos relacional** para la gestión de turnos en la empresa **Servicios LiMar**, utilizando **Docker**, **PostgreSQL 14** y **pgAdmin4**.  
El objetivo es demostrar el uso de DDL y DML, la correcta definición de relaciones entre tablas y el despliegue de una base funcional en contenedores.

---

## ⚙️ Configuración de contenedores

Los contenedores fueron creados y ejecutados manualmente desde **PowerShell**, con los siguientes comandos:

```bash
# Contenedor de PostgreSQL
docker run -d --name postgres_servilimar `
  -e POSTGRES_USER=ulimar `
  -e POSTGRES_PASSWORD=ex4men_db `
  -p 5432:5432 postgres:14

# Contenedor de pgAdmin4
docker run -d --name pgadmin_servilimar `
  -e PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com `
  -e PGADMIN_DEFAULT_PASSWORD=limar#123 `
  -p 5051:80 dpage/pgadmin4
```

Una vez activos los contenedores, se accede a pgAdmin desde  
👉 **http://localhost:5051**  
y se registra el servidor `postgres_servilimar` con las credenciales configuradas.

---

## 🧱 Estructura SQL

| Archivo                      | Tipo SQL                             | Contenido                                               |
|------------------------------|--------------------------------------|---------------------------------------------------------|
| `ddl_servilimar.sql`         | **DDL (Data Definition Language)**   | Creación de tablas, claves primarias y foráneas         |
| `dml_servilimar.sql`         | **DML (Data Manipulation Language)** | Inserción de 10 registros por tabla                     |
| `vista_turnos_completos.sql` | **Consulta relacional (JOIN)**       | Vista que integra todas las tablas con datos combinados |

---

## 🗂️ Tablas principales
1. **Ciudad** – Registro de ubicaciones.  
2. **Usuario** – Personas registradas en el sistema.  
3. **Servicio** – Tipos de servicios ofrecidos.  
4. **Empleado** – Personal asociado a los servicios.  
5. **Turno** – Programación de atención a usuarios.  
6. **Notificación** – Mensajes automáticos enviados a usuarios.

Cada tabla contiene **10 registros** y mantiene la **integridad referencial** mediante llaves foráneas.

---

## 🔍 Vista de datos combinados

Se creó la vista `vista_turnos_completos` para mostrar la información consolidada de turnos, usuarios, servicios, empleados y notificaciones:

```sql
CREATE OR REPLACE VIEW vista_turnos_completos AS
SELECT 
  t.turno_id,
  u.nombre AS nombre_usuario,
  u.apellido AS apellido_usuario,
  s.nombre AS servicio,
  e.cargo AS cargo_empleado,
  t.fecha,
  t.hora_inicio,
  t.hora_fin,
  n.mensaje AS mensaje_notificacion
FROM Turno t
JOIN Usuario u ON t.usuario_id = u.usuario_id
JOIN Servicio s ON t.servicio_id = s.servicio_id
JOIN Empleado e ON t.empleado_id = e.empleado_id
LEFT JOIN Notificacion n ON n.usuario_id = u.usuario_id;
```

---

## 👨‍💻 Autora
**Lina Vanessa Cosme Arce**  
Universidad del Valle  
Curso: *Bases de Datos*  
Año: 2025  

<p align="right">
  <img src="https://media.tenor.com/RYGLfSXNIRIAAAAi/frieren.gif" width="40">
</p>

