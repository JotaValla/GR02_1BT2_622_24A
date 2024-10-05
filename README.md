# Sistema de Gestión de Mascotas
Este proyecto es una aplicación web que permite registrar y consultar mascotas, utilizando tecnologías como JSP, Servlets, JPA y ORM en Java.

## Funcionalidades
Registrar Nueva Mascota: Permite añadir mascotas al sistema ingresando su nombre, raza y edad.
Consultar Mascotas: Muestra una lista con las mascotas previamente registradas.

## Estructura del Proyecto
Entidad Pet
La entidad Pet representa a una mascota, con atributos como el nombre, raza, edad, y un identificador único.

DAO (Data Access Object)
El PetDAO se encarga de gestionar las interacciones con la base de datos, manejando las operaciones de guardar, recuperar y gestionar los datos de las mascotas.

## Servlets

AddPetServlet: Maneja el registro de nuevas mascotas en la base de datos.
GetPetServlet: Recupera la lista de mascotas y las muestra en una página JSP.
## Páginas JSP

addMascota.jsp: Página con el formulario para registrar una nueva mascota.

listaMascotas.jsp: Muestra la lista de mascotas registradas.

index.jsp: Página principal con opciones para registrar nuevas mascotas o consultar la lista.

## Flujo de la Aplicación
El usuario accede a la página principal (index.jsp) y elige entre registrar una nueva mascota o consultar la lista.

Si elige registrar, es redirigido a addMascota.jsp, donde completa un formulario.

El formulario envía los datos al servlet AddPetServlet, que guarda la nueva mascota en la base de datos.

Si elige consultar mascotas, es redirigido a GetPetServlet, que muestra la lista de mascotas registradas en listaMascotas.jsp.

## Tecnologías Utilizadas
- Java
- JSP (JavaServer Pages)
- Servlets
- JPA (Java Persistence API)
- ORM (Object-Relational Mapping)
- HTML y CSS

## Requisitos para Ejecutar
- JDK 11 o superior
- Apache Tomcat (para desplegar la aplicación)
- Base de datos compatible con JPA (por ejemplo, MySQL o H2)

## Instrucciones de Ejecución
1. Clonar el repositorio en tu máquina local.
2. Configurar la conexión a la base de datos en persistence.xml.
3. Desplegar la aplicación en un servidor compatible con Java EE (por ejemplo, Tomcat).
4. Acceder a la aplicación a través del navegador para empezar a registrar y consultar mascotas.

## Contribuciones
Las contribuciones son bienvenidas. Si encuentras algún error o tienes sugerencias, por favor abre un issue o crea un pull request.
