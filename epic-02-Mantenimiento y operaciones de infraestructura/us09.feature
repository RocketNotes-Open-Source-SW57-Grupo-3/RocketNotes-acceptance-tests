Feature: Optimización de la Asignación de Horarios y Profesores

Como personal administrativo,
Quiero estructurar y asignar horarios detallados para cada nivel educativo, así como asignar profesores específicos a cada curso,
Para asegurar una organización eficaz que respalde tanto la instrucción académica como el bienestar estudiantil.

Escenario: Configuración de Horarios por Nivel Educativo
    Dado que el personal administrativo está habilitado en el sistema,
    Cuando realiza la configuración de nuevos horarios, detallando el nivel educativo, el grado y la sección correspondiente,
    Entonces el sistema habilita la distribución de cursos, la lista de alumnos matriculados y la designación de profesores

Escenario: Asignación Efectiva de Profesores
    Dado que se ha creado un horario para un nivel, grado y sección específicos,
    Cuando el personal administrativo procede a asignar profesores a los cursos designados,
    Entonces el sistema confirma la asignación y actualiza la información del curso con los detalles pertinentes, incluyendo la relación de estudiantes inscritos.

Escenario: Notificación a profesores sobre asignaciones
    Dado que un profesor ha sido asignado a un curso específico,
    Cuando la asignación es finalizada en el sistema,
    Entonces el profesor recibe una notificación, con todos los detalles necesarios sobre el curso, grado, sección y estudiantes asignados, facilitando su preparación para el inicio de clases.

Escenario: Preparativos para el Nuevo Ciclo Escolar
    Dado que se prepara el inicio de un nuevo ciclo escolar,
    Cuando el personal administrativo planifica y confirma las asignaciones de horarios, grados, secciones y profesores de acuerdo a la nueva estructura académica,
    Entonces el sistema actualiza y comunica todas las asignaciones a los profesores implicados, permitiéndoles una preparación adecuada para el nuevo ciclo.
