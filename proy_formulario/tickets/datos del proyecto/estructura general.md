- **index.php** (Página de inicio, redirecciona a la página de login o dashboard según el estado de inicio de sesión)
- **login.php** (Página de inicio de sesión)
- **registro.php** (Página de registro de usuarios)
- **logout.php** (Script para cerrar sesión)
- **dashboard_admin.php** (Página de dashboard para administradores)
- **dashboard_cliente.php** (Página de dashboard para clientes)
- **ver_ticket.php** (Página para ver detalles de un ticket)
- **responder_ticket.php** (Página para responder a un ticket)
- **crear_ticket.php** (Página para crear un nuevo ticket)
- **database.php** (Archivo de configuración de la base de datos MySQL)
- **funciones.php** (Archivo que contiene funciones comunes)
- **css/** (Carpeta que contiene archivos CSS)
  - **style.css** (Archivo CSS personalizado)
  - ...
- **js/** (Carpeta que contiene archivos JavaScript)
  - **script.js** (Archivo JavaScript personalizado)
  - ...
- **bootstrap/** (Carpeta que contiene archivos de Bootstrap)
  - ...
- **img/** (Carpeta que contiene imágenes y recursos gráficos)

### Control de Acceso y Roles de Usuario

- Implementar un sistema de registro y login para usuarios (clientes y administradores).
- Establecer roles de usuario en la base de datos (clientes y administradores) y gestionar el acceso en las páginas.

### Niveles de Incidencias

- Utilizar la tabla "Nivel" de la base de datos para gestionar los niveles de incidencias (baja, media, alta, urgente).

### Dashboard

- Crear páginas de dashboard separadas para administradores y clientes.
- Mostrar estadísticas relevantes en el dashboard de administradores, como tickets asignados, cerrados y pendientes.
- Mostrar estadísticas relevantes en el dashboard de clientes, como tickets enviados y respondidos, y cerrados.

### Página para Responder Tickets

- Crear una página para que administradores y clientes puedan responder a tickets existentes.
- Utilizar la tabla "Comentario" de la base de datos para almacenar comentarios relacionados con los tickets.

### Crear Tickets

- Implementar una página para que los clientes puedan crear nuevos tickets de incidencia.
- Utilizar la tabla "Ticket" de la base de datos para almacenar información sobre los tickets.

### Estilos y Diseño

- Utilizar Bootstrap para el diseño y la estructura de las páginas web.
- Personalizar el aspecto con un archivo CSS personalizado.
- Incluir JavaScript para la interacción y funcionalidad dinámica.

