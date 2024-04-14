Feature: Registro de asistencias

Como profesor,
Quiero registrar la asistencia de mis estudiantes
Para tener el registro de cada clase y un control eficiente de la presencia estudiantil.

Escenario: Acceso a registro de asistencias por aula
    Dado que un profesor necesita registrar la asistencia en una clase específica,
    Cuando accede a la función de asistencia dentro del sistema
    Y solicita la lista de estudiantes de un aula determinada,
    Entonces el sistema proporciona la lista actual de estudiantes asignados a esa aula.

Escenario: Registro de asistencia de estudiantes
    Dado que el profesor accede a la lista de estudiantes de un aula específica,
    Cuando marca la asistencia de los estudiantes
    Y finaliza el proceso de registro,
    Entonces el sistema registra la asistencia de los estudiantes y confirma al profesor que el registro fue exitoso.

Escenario: Edición de asistencias registradas
    Dado que un profesor identifica la necesidad de corregir un registro de asistencia previamente completado,
    Cuando accede al registro específico y realiza los ajustes necesarios,
    Y solicita realizar los cambios,
    Entonces el sistema actualiza el registro de asistencia con la información corregida.

Escenario: Visualización de historial de asistencias
    Dado que un profesor desea revisar el historial de asistencias de una clase o período específico,
    Cuando solicita un informe de asistencias a través del sistema,
    Entonces el sistema compila y muestra un reporte de las asistencias registradas.

