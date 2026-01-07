ZapStore

He creado ZapStore, una tienda online de zapatos, usando PHP para el backend y MySQL como base de datos. En este proyecto, he logrado que los usuarios puedan navegar por los productos, añadirlos al carrito y consultar los detalles completos de cada producto de manera segura.

Me he asegurado de que todas las consultas a la base de datos sean preparadas y parametrizadas, previniendo cualquier intento de inyección SQL y manteniendo el proyecto seguro frente a ataques comunes.

En el frontend, he utilizado JavaScript y la API de IntersectionObserver para que los productos y las tarjetas aparezcan de manera animada al hacer scroll, mejorando la experiencia del usuario y haciendo la página más atractiva.

Me he encargado también de explicar cada parte de código del proyecto entero. Tecnologías utilizadas

PHP: Para la lógica de backend, manejo de sesiones y consultas seguras a la base de datos.

MySQL: Para almacenar la información de usuarios, productos y pedidos.

JavaScript: Para animaciones de los productos al hacer scroll con IntersectionObserver.

HTML / CSS: Para la estructura y el estilo responsivo de la página.

Flexbox y Grid: Para organizar el layout de manera clara y adaptable. Contraseñas seguras con hash guardadas en la base de datos.

Lo que he logrado:

Crear un catálogo completo de productos, incluyendo nombre, descripción, precio, imagen y video.

Como buena práctica, creé un archivo llamado conexion.php que contiene la conexión a la base de datos y retorna la conexión en una variable conexión, así si toca cambiar algún dato en la conexión no hace falta ir cambiando en cada archivo, esto es importante porque a la hora de desplegar hay que cambiar sí o sí el host... y gracias a realizarlo de esa forma solo hay que cambiar el archivo principal.

También en la carpeta conf he creado un archivo llamado footer que contiene el footer y así poder utilizarlo en varias páginas del proyecto sin tener que repetir código gracias a include.

Implementar un carrito de compras que calcula automáticamente la cantidad total y el precio acumulado.

Hacer que los productos aparezcan con animaciones suaves gracias a JS e IntersectionObserver.

Garantizar seguridad en todas las consultas mediante prepared statements, protegiendo contra inyecciones SQL.

Desarrollar un diseño completamente responsivo, que se adapta a cualquier pantalla, desde escritorio hasta móvil.

Lograr que la interfaz sea limpia y profesional, facilitando la experiencia de usuario y la navegación El proyecto lo he desplegado para poder probarlo gracias a InfinityFree. Este es el enlace de la tienda:
Este es el enlance de la tienda:
https://mitiendazapatos.42web.io
