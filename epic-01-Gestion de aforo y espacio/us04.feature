Feature: Gestión de las notas por aula

Como profesor,
Quiero gestionar y registrar las notas de mis estudiantes de manera eficiente en cada evaluación. 
Para asegurar un seguimiento preciso del rendimiento académico en las aulas asignadas

Escenario: Acceso a evaluaciones y creación de nuevas
    Dado que un profesor necesita gestionar las notas en un aula designada,
    Cuando accede a la sección de gestión de notas del sistema
    Y consulta las evaluaciones para un aula específica,
    Entonces el sistema muestra un listado de las evaluaciones existentes y ofrece la funcionalidad para añadir nuevas evaluaciones.

Escenario: Registro de notas en una evaluación
    Dado que el profesor ha accedido a una evaluación específica,
    Cuando ingresa las notas de cada estudiante 
    Y solicita el registro de las notas,
    Entonces el sistema actualiza los registros de las nuevas notas de cada estudiante 
    Y notifica al profesor que las notas han sido guardadas exitosamente.

Escenario: Actualización de notas existentes
    Dado que un profesor identifica la necesidad de modificar las notas de una evaluación previa,
    Cuando accede a la evaluación, realiza las modificaciones necesarias y confirma los cambios,
    Entonces el sistema actualiza los registros con las notas ajustadas y verifica la correcta aplicación de los cambios.

Escenario:  Consulta de historial académico de un estudiante
    Dado que el profesor desea revisar el desempeño académico de un estudiante,
    Cuando solicita el historial de notas de un estudiante específico dentro de un aula,
    Entonces el sistema proporciona un resumen detallado de todas las evaluaciones y notas registradas para ese estudiante, permitiendo un análisis completo de su rendimiento académico.
