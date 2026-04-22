# 🏥 AgenSoft - Infraestructura de Base de Datos

Este repositorio contiene la configuración de infraestructura necesaria para el sistema de gestión de citas médicas. Utiliza **Docker** para garantizar que todos los desarrolladores del equipo trabajen sobre el mismo entorno de base de datos.

## 🛠️ Requisitos Previos

Antes de comenzar, asegúrate de tener instalado:
* **Docker Desktop** o **Docker Engine**.
* **Docker Compose**.

## 🚀 Inicio Rápido

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/EdwarDa2/AgenSoft-infra.git
   cd AgenSoft-infra

2. **Configurar variables de entorno:**
Copia el archivo de ejemplo y renómbralo:

  ```bash 
  cp .env.example .env
  ```
3. **Levantar la base de datos:**
 
  ```bash
  docker compose up -d
  ```
