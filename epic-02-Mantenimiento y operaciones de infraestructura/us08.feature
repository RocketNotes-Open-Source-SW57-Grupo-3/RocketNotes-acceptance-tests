Feature: Seguimiento de progreso individual del estudiante

Como profesor,
Quiero realizar un seguimiento del progreso académico de cada uno de mis estudiantes a lo largo del año
Para identificar áreas de mejora y proporcionar apoyo adicional según sea necesario.

Escenario: Consulta de lista de estudiantes por aula
    Dado que un profesor requiere revisar la composición de sus clases,
    Cuando realiza una solicitud de información sobre una aula específica,
    Entonces el sistema muestra un listado completo de los estudiantes matriculados en esa aula.

Escenario: Acceso al historial académico para seguimiento individual
    Dado que un profesor necesita evaluar el rendimiento de un estudiante individualmente,
    Cuando solicita el perfil académico del estudiante dentro del sistema,
    Entonces el sistema proporciona un resumen detallado del progreso académico, incluyendo evaluaciones y observaciones relevantes. 

Escenario: Identificación de estudiantes que requieren atención adicional
    Dado que el profesor necesita identificar estudiantes que puedan necesitar apoyo adicional basado en su rendimiento académico,
    Cuando revisa el rendimiento general de la clase a través del sistema,
    Entonces el sistema resalta a los estudiantes que muestran signos de dificultades académicas

