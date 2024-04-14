Feature: Gestión del aforo de las aulas

Como miembro del equipo administrativo,
Quiero gestionar de manera efectiva el aforo de las aulas,
Para optimizar el espacio disponible y asegurar un entorno de aprendizaje adecuado.

Escenario:  Visualización de aulas y su capacidad
    Dado que el usuario con permisos administrativos accede al sistema para gestionar el aforo de las aulas
    Cuando se solicita la visualización de la infraestructura actual
    Entonces el sistema proporciona un listado de las aulas, con detalles como el nombre del aula (indicativo de su ubicación y número del aula), capacidad máxima permitida, estudiantes matriculados, piso y pabellón.

Escenario: Añadir una nueva aula
    Dado que el usuario desea añadir una nueva aula al sistema.
    Cuando envía los datos del aula, incluyendo nombre (siguiendo la nomenclatura establecida), capacidad máxima permitida, estudiantes matriculados y ubicación (piso y pabellón)
    Y confirma la adición,
    Entonces el sistema agrega el nuevo salón a la lista de aulas, permitiendo su gestión dentro de la plataforma.

Escenario: Actualización de la información de un aula
    Dado que una aula existente necesita una actualización en su información de capacidad o disponibilidad.
    Cuando el usuario proporciona los nuevos datos a actualizar,
    Entonces el sistema aplica los cambios y verifica la actualización reflejando los nuevos datos del aula.

Escenario: Consulta de aulas por piso o pabellón
    Dado que el usuario necesita encontrar aulas en una ubicación específica,
    Cuando solicita aulas filtradas por piso o pabellón,
    Entonces el sistema presenta únicamente las aulas que cumplen con el criterio de filtrado.

