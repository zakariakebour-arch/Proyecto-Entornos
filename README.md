ZapStore
Descripcion del proyecto

He creado ZapStore, una tienda online de calzado, usando PHP para el backend y MySQL como base de datos. En este proyecto, he logrado que los usuarios puedan navegar por los productos, añadirlos al carrito y consultar los detalles completos de cada producto de manera segura.

Me he asegurado de que todas las consultas a la base de datos sean preparadas y parametrizadas, previniendo cualquier intento de inyeccion SQL y manteniendo el proyecto seguro frente a ataques comunes.

En el frontend, he utilizado JavaScript y la API de IntersectionObserver para que los productos y las tarjetas aparezcan de manera animada al hacer scroll, mejorando la experiencia del usuario y haciendo la pagina mas atractiva.

Tecnologias utilizadas

PHP: Para la logica de backend, manejo de sesiones y consultas seguras a la base de datos.

MySQL: Para almacenar la informacion de usuarios, productos y pedidos.

JavaScript: Para animaciones de los productos al hacer scroll con IntersectionObserver.

HTML / CSS: Para la estructura y el estilo responsivo de la pagina.

Flexbox y Grid: Para organizar el layout de manera clara y adaptable.

Lo que he logrado

Crear un catalogo completo de productos, incluyendo nombre, descripcion, precio, imagen y video.
Como buena practica,cree un archivo llamado conexion.php que contiene la conexion a la base de datos y retorna la conexion en una variable conexion,asi si toca cambiar algun dato en la conexion no hace falta ir cambiando en cada archivo,esto es importante porque a la hora de desplegar hay que cambiar si os si el host... y gracias a realizarlo de esa forma solo hay que cambiar el archivo principal.
Tambien en la carpeta conf he creado un archivo llamado footer que contiene el footer y asi poder utilizarlo en varias paginas del proyecto sin tener que repetir codigo gracias a include.
Implementar un carrito de compras que calcula automaticamente la cantidad total y el precio acumulado.

Hacer que los productos aparezcan con animaciones suaves gracias a JS e IntersectionObserver.

Garantizar seguridad en todas las consultas mediante prepared statements, protegiendo contra inyecciones SQL.

Desarrollar un diseño completamente responsivo, que se adapta a cualquier pantalla, desde escritorio hasta movil.

Lograr que la interfaz sea limpia y profesional, facilitando la experiencia de usuario y la navegacion
El proyecto lo he desplegado para poder provarlo gracias a infinity free.
Este es el enlance de la tienda:
https://mitiendazapatos.42web.io
