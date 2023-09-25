php mysql bootstrap

- debera tener un control de accesos registro/login
- debera tener roles de usuario, adminiestradores y clientes
- niveles de incidencias
- debera tener un dashboard administradores y clientes
- Dashboard, deberá mostrar tickets asignado, cerrado, pendientes (administradores)
- Dashboard, deberá mostrar sus tickets enviados y respondidos, cerrados
- Página para responder tickets, administradores y clientes

*base de datos*

tabla - cliente
*id_cliente
*nombre_cliente
*email
*password

tabla - administrador
*id_administrador
*nombre_administrador
*email
*password
*id_area

tabla - ticket
*id_ticket   
*id_cliente   
*id_administrador   
*id_area   
*incidencia   
*nivel   
*status
*fecha_creacion   
*fecha_cerrado

tabla - comentario
*id comentario
*id_ticket
*comentario
*fecha_creacion

tabla - area
*id_area
*nombre_area

tabla - nivel -> baja, media, alta, urgente
*id_nivel
*nombre_nivel

tabla - status -> Abierto, proceso, pausado, cerrado
*id_status
*nombre_status