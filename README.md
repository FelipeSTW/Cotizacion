# Proyecto Yute

## Descripción
Este proyecto es una aplicación web desarrollada con Vue 3 y Laravel 10 , utilizando la arquitectura de Inertia.js para proporcionar una experiencia de usuario fluida similar a una aplicación de una sola página (SPA). El proyecto incluye funcionalidades de cotización de productos y manejo de clientes.

## Requisitos
- Laragon (o cualquier otro entorno LAMP/WAMP que incluya PHP, MySQL, y un servidor web).
- Node.js y npm (para administrar las dependencias del frontend).
- MySQL como sistema de gestión de bases de datos.

## Instalación

1. **Clonar el Repositorio**
   ```sh
   git clone <URL_REPOSITORIO>
   cd yute_project
   ```

2. **Instalar Dependencias del Backend**
   Asegúrate de tener Laragon ejecutando para acceder a MySQL y PHP.
   ```sh
   composer install
   ```

3. **Instalar Dependencias del Frontend**
   Asegúrate de tener Node.js instalado.
   ```sh
   npm install
   ```

4. **Configurar el Archivo .env**
   Copia el archivo de configuración de ejemplo y configura tus variables de entorno, incluyendo la conexión con la base de datos `yute_dba`.
   ```sh
   cp .env.example .env
   ```
   Actualiza las credenciales de conexión a la base de datos:
   ```env
   DB_DATABASE=yute_dba
   DB_USERNAME=root
   DB_PASSWORD="" sin contraseña o si es necesario aplicar 1234
   ```

5. **Generar la Clave de la Aplicación**
   ```sh
   php artisan key:generate
   ```

6. **Ejecutar Migraciones**
   ```sh
   php artisan migrate
   ```

7. **Iniciar el Servidor de Desarrollo**
   - Inicia el servidor PHP con:
     ```sh
     php artisan serve
     ```
   - Inicia el servidor de desarrollo de Vite:
     ```sh
     npm run dev
     ```

## Dependencias
Las siguientes dependencias se utilizan en este proyecto:

### Desarrollo
- **@inertiajs/vue3**: Inertia.js con Vue 3 para la integración del lado del cliente.
- **@tailwindcss/forms**: Plugin para estilizar formularios con Tailwind CSS.
- **@vitejs/plugin-vue**: Plugin de Vite para Vue.js.
- **autoprefixer**: Proveedor de soporte para navegadores antiguos.
- **axios**: Cliente HTTP para realizar solicitudes asíncronas.
- **laravel-vite-plugin**: Integración de Vite con Laravel.
- **postcss**: Utilidad de procesamiento de CSS.
- **tailwindcss**: Framework CSS para diseños rápidos y consistentes.
- **vite**: Herramienta para el desarrollo de frontend rápido.
- **vue**: Biblioteca de interfaz de usuario progresiva.

### Producción
- **@fortawesome/free-solid-svg-icons**: Conjunto de íconos de FontAwesome.
- **@fortawesome/vue-fontawesome**: Integración de íconos FontAwesome con Vue.js.
- **@inertiajs/inertia**: Biblioteca de Inertia para la gestión de peticiones en el lado del cliente.
- **@inertiajs/inertia-vue3**: Integración de Inertia con Vue 3.
- **events-browserify**: Soporte para eventos en el navegador.
- **toastify-js**: Biblioteca para mostrar notificaciones emergentes.
- **ziggy-js**: Proporciona las rutas de Laravel en JavaScript para facilitar el enrutamiento.

## Base de Datos
El proyecto utiliza una base de datos MySQL llamada `yute_dba`. Las migraciones automáticas se encargan de crear las tablas necesarias.
Esta se encuentra en la siguiente ruta :database\mi_base_de_datos\yute_dba.sql

## Comandos Útiles

- **Ejecutar Migraciones**: `php artisan migrate`
- **Revertir Migraciones**: `php artisan migrate:rollback`
- **Iniciar Servidor de Desarrollo**: `php artisan serve`
- **Iniciar Vite**: `npm run dev`

## Backups y Seguridad

- **Backups**: Se recomienda realizar copias de seguridad de la base de datos `yute_dba` regularmente utilizando el comando:
  ```sh
  mysqldump -u root -p yute_dba > backup_yute_dba.sql
  ```
  Este comando se puede automatizar con el uso del Programador de Tareas en Windows.

- **Protección CSRF**: Laravel tiene protección CSRF integrada. Todos los formularios contienen tokens CSRF para evitar ataques.

## Contribuciones
Las contribuciones son bienvenidas. Por favor, realiza un fork del proyecto, crea una rama para tus cambios y abre un Pull Request cuando estés listo para que se revisen.




