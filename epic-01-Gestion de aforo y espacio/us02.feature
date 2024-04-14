Feature: Facilitación de la comunicación entre profesores y padres

Como profesor,
Quiero comunicarme con los padres de mis estudiantes mediante un sistema de mensajería,
Para enviar correos electrónicos que informen sobre el progreso académico y asuntos relevantes relacionados con sus hijos.

Escenario: Redacción del mensaje
    Dado que el profesor necesita enviar un correo a los padres de familia,
    Cuando el profesor accede a la funcionalidad de mensajería 
    Y redacta un mensaje dirigido a los padres de los estudiantes especificados,
    Entonces el sistema ofrece una interfaz donde el profesor puede ingresar el contenido del mensaje
    Y adjuntar cualquier documento relevante antes de enviarlo a los correos electrónicos asociados con los padres de los estudiantes seleccionados.

Escenario: Confirmación de envío exitoso
    Dado que el profesor ha enviado un correo electrónico a través del sistema de mensajería,
    Cuando el mensaje ha sido enviado exitosamente,
    Entonces el sistema notifica al profesor la entrega exitosa del correo electrónico.

Escenario: Registro de comunicaciones enviadas
    Dado que un correo electrónico ha sido enviado a los padres,
    Cuando el envío se completa,
    Entonces el sistema registra el correo electrónico en el historial de comunicaciones del estudiante para referencia futura.
