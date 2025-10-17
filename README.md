# Parcial 1 Data Base - Servicios LiMar

## Descripción
Implementación de una base de datos para gestionar turnos en la empresa **Servicios LiMar**, desplegada con **Docker**, **PostgreSQL** y **pgAdmin4**.

## Clasificación SQL

| Archivo                   | Tipo de lenguaje SQL             | Contenido                         |
|---------------------------|----------------------------------|-----------------------------------|
| estructura_servilimar.sql | DDL (Data Definition Language)   | Definición de tablas y relaciones |
| registros_servilimar.sql  | DML (Data Manipulation Language) | Inserción de datos iniciales      |


## Configuración de contenedores
```bash
docker run -d --name postgres_servilimar -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 postgres:14
docker run -d --name pgadmin_servilimar -e PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com -e PGADMIN_DEFAULT_PASSWORD=limar#123 -p 5051:80 dpage/pgadmin4
