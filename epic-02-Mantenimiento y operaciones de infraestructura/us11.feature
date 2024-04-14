Feature: Gestión del aforo de las instalaciones escolares.

Como personal administrativo,
Quiero gestionar eficientemente la capacidad de las instalaciones escolares,
Para optimizar el espacio disponible, garantizar la seguridad y prevenir la sobrecarga en áreas comunes.

Escenario: Registro de nuevos ítems en el inventario
    Dado que se han adquirido nuevos útiles escolares,
    Cuando el personal administrativo registra estos ítems en el sistema con su información correspondiente,
    Entonces el sistema actualiza el inventario para incluir estas nuevas adiciones.

Escenario: Actualización de la cantidad de ítems existentes
    Dado que es necesario modificar la cantidad disponible de un ítem en el inventario,
    Cuando el personal administrativo realiza ajustes en las cifras de los ítems específicos,
    Entonces el sistema refleja las cantidades actualizadas en el inventario.

Escenario: Recepción y registro de solicitudes de útiles escolares
    Dado que un profesor solicita útiles escolares para su aula,
    Cuando realiza una solicitud de útiles a través del sistema, indicando los ítems y cantidades requeridas,
    Entonces el sistema registra la solicitud y notifica al equipo administrativo para su revisión.

Escenario: Confirmación de la solicitud
    Dado que una solicitud de útiles escolares ha sido aprobada por el equipo administrativo,
    Cuando los útiles son asignados para su entrega al profesor solicitante,
    Entonces el sistema actualiza el inventario reflejando la salida de los ítems y notifica al profesor sobre la confirmación de la solicitud y la fecha estimada de entrega.
