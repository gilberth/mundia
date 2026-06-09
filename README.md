# MundialHub — Generador de Figuritas del Mundial

MundialHub es una aplicación web interactiva que permite a los usuarios crear sus propias figuritas (cromos) personalizadas al estilo Panini para diferentes ediciones de la Copa del Mundo: **Mundial 2026, Qatar 2022, Rusia 2018, Alemania 2006 y Extra Sticker**.

Este proyecto es una aplicación **100% client-side (HTML + CSS + JS vanilla)** que realiza todo el procesamiento de imágenes, alineación e interactividad en tiempo real directamente en el navegador del usuario sin necesidad de un servidor de backend.

---

## 🚀 Características Principales

* **Múltiples Ediciones**: Soporte para plantillas de cromos de 2026, 2022, 2018, 2006 y cromos de rareza especial (Extra Stickers).
* **Internacionalización**: Traducción en tiempo real entre **Español (ES)** e **Inglés (EN)** con auto-detección del idioma del navegador.
* **Descarga en Alta Resolución**: Renderizado de imágenes de alta definición a través de Canvas API de hasta **2895×3840 px**, ideales para imprimir o compartir.
* **Integración de Banderas Dinámicas**: Consumo del CDN de `flag-icons` para obtener banderas vectoriales actualizadas de cualquier país seleccionado.

---

## 🎨 Nuevas Mejoras Interactivas (Añadidas)

Se han incorporado mejoras interactivas avanzadas para que el usuario pueda manipular su foto directamente sobre el cromo sin depender únicamente de los sliders tradicionales:

1. **Arrastre Directo (Drag & Drop)**:
   * Permite mover y reubicar la foto del jugador haciendo clic y arrastrando directamente en la vista previa del cromo.
   * Soporta pantallas táctiles en dispositivos móviles con bloqueo de scroll para una experiencia fluida.
   * Integra cursor dinámico `grab` (mano abierta) y `grabbing` (mano cerrada) para indicar el estado de interacción.
2. **Zoom de Foto en Vista Previa (Mouse Wheel & Pinch-to-Zoom)**:
   * **Escritorio**: Amplía o reduce el tamaño del jugador deslizando la rueda del mouse (scroll) sobre el cromo.
   * **Móviles**: Pellizca con dos dedos (`pinch-to-zoom`) para escalar la foto intuitivamente en pantallas táctiles.
3. **Carga Rápida desde Parámetro de URL**:
   * Posibilidad de precargar cualquier foto directamente en la aplicación agregando el parámetro `?photo=URL_DE_TU_IMAGEN` en la barra de direcciones.

---

## 🛠️ Tecnologías Utilizadas

* **HTML5 Semantic Elements** & **CSS3**: Maquetación mobile-first adaptativa con variables CSS dinámicas para cada edición temática.
* **Canvas API**: Renderizado por capas (Fondo → Foto → Camiseta → Marcos/SVG → Textos personalizados).
* **Face-API.js**: Red neuronal en el navegador (ejecutada de manera segura en CPU) para detección de rostro y alineación automatizada de la camiseta de fútbol en la foto del jugador.
* **Coloris**: Selector de colores avanzado y ligero para personalizar los tintes de fondo del cromo.
* **Flag Icons**: Banderas vectoriales en alta calidad vía CDN de jsDelivr.

---

## 💻 Ejecución Local

Para correr el proyecto en tu máquina local, no necesitas instalar dependencias pesadas. Solo clona el repositorio y levanta un servidor web estático.

Por ejemplo, usando Python:

```bash
# Navegar al directorio del proyecto
cd mundia

# Iniciar un servidor local HTTP en el puerto 8080
python3 -m http.server 8080
```

Luego, abre tu navegador e ingresa a:
👉 [http://localhost:8080/](http://localhost:8080/)

---

## 📂 Estructura de Archivos

* `index.html`: Estructura principal, metadatos SEO y diseño responsivo.
* `editor.js`: Lógica y motor de render loop del Canvas, interactividad y eventos de arrastre/zoom.
* `style.css`: Hojas de estilo y temas visuales dinámicos.
* `shirt-align.js`: Funcionalidad de Face-API.js para alineamiento automático.
* `i18n.js`: Diccionario de traducciones (ES/EN).
* `edition-*.js`: Archivos de configuración y lógica de dibujo independientes para cada edición del mundial.
* `frontend/assets/`: Recursos estáticos locales (fuentes, capas, camisetas y miniflags).
