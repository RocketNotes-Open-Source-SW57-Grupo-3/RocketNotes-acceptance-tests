Feature: Registro y Gestión del Mantenimiento de la Infraestructura

Como personal administrativo,
Quiero registrar y actualizar el estado del mantenimiento de la infraestructura escolar,
Para mantener un entorno seguro y funcional para todos en la institución

Escenario: Consulta de infraestructuras con mantenimiento pendiente
    Dado que el personal administrativo busca información sobre el estado actual del mantenimiento de infraestructuras,
    Cuando accede a la sección de "Mantenimiento" y luego a "Infraestructura",
    Entonces visualiza una lista detallada de todas las infraestructuras con mantenimiento pendiente.

Escenario: Registro de nueva necesidad de mantenimiento
    Dado que se identifica una nueva necesidad de mantenimiento en alguna infraestructura,
    Cuando el personal administrativo procede a registrar esta infraestructura, especificando el nombre y los detalles del mantenimiento necesario
    Entonces la infraestructura se agrega a la lista de pendientes con toda la información relevante.

Escenario: Actualización del estado de mantenimiento
    Dado que se requiere actualizar la información de mantenimiento de una infraestructura específica,
    Cuando el personal selecciona esta infraestructura y modifica los detalles necesarios,
    Entonces el sistema actualiza el registro para reflejar los cambios aplicados.

Escenario: Confirmación de mantenimiento completado
    Dado que se ha completado el mantenimiento de una infraestructura,
    Cuando el personal administrativo marca la tarea como completada en el sistema,
    Entonces el sistema actualiza el estado de la infraestructura a "Mantenimiento Completado" y notifica al personal correspondiente.

