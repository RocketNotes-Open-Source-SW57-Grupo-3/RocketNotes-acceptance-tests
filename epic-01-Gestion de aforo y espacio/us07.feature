Feature: Exportación de Reportes de Rendimiento Estudiantil

Como personal administrativo
Quiero exportar reportes de rendimiento estudiantil en formatos compatibles con otras herramientas de análisis
Para facilitar la revisión y el análisis de datos a nivel institucional.

Escenario: Elección de formato para exportación
    Dado que el administrador necesita exportar un reporte de rendimiento estudiantil,
    Cuando solicita la función de exportación de reportes,
    Entonces el sistema presenta las opciones de formato disponibles y procesa la solicitud para preparar el reporte en el formato elegido.

Escenario:  Inicio de la descarga del reporte
    Dado que el administrador ha solicitado un reporte en un formato específico,
    Cuando el sistema ha completado la preparación del reporte,
    Entonces notifica al administrador que el reporte está listo para la descarga 
    Y procede con la descarga automática en la ubicación de almacenamiento designada.

Escenario: Validación de contenido en el reporte descargado
    Dado que el reporte de rendimiento estudiantil se ha descargado,
    Cuando el administrador consulta el reporte en su dispositivo,
    Entonces verifica que el contenido del reporte refleja de manera precisa y completa el rendimiento estudiantil, según los criterios establecidos, en el formato de archivo seleccionado.

Escenario: Generación de reporte con filtros aplicados
    Dado que el administrador busca un análisis detallado que requiere la aplicación de filtros específicos (como rango de fechas o categorías de rendimiento),
    Cuando realiza la solicitud de exportación aplicando estos filtros,
    Entonces el sistema genera y ofrece el reporte que coincide con los criterios de filtrado especificados, listo para su revisión y análisis posterior.

