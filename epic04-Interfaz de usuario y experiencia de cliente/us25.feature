Feature: Selección de Idioma en la Landing Page

Como visitante internacional,
Quiero seleccionar mi idioma preferido en la Landing Page,
Para entender mejor la información sobre RocketNotes y sentirme más cómodo navegando

Escenario: Visualización del Idioma Predeterminado
    Dado que un visitante accede a la Landing Page de RocketNotes por primera vez,
    Cuando este visitante observa la interfaz de usuario,
    Entonces el sitio deberá mostrar el contenido en inglés por defecto, ofreciendo claramente la opción de cambiar el idioma a través de un selector visible.

Escenario: Cambio de Idioma a Español
    Dado que un visitante desea leer la información en su idioma preferido,
    Cuando selecciona "Español" del selector de idioma en la Landing Page,
    Entonces el contenido de la página, incluidas todas las secciones y menús, cambiará instantáneamente al español.
