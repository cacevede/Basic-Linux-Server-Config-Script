<h1>Basic Linux Server Config</h1>
<p>
1. Creacion maquina virtual 64 bits con software de virtualizacion (VirtualBox).
2. Instalacion sistema operativo Ubutun 18.04.3
3. Actualizacion de los paquetes del sistema operativo

	sudo apt update

NOTA: Debido a que Canonical, quien es uno de los que mantiene el proyecto Ubuntu no actualiza sus repositorios constantemente, la instalacion por defecto que se realiza de NodeJS seria la version 8.10, apesar que es LTS esta pronta por dejar de recibir soporte (Diciembre 2019).

4. Instalacion de PPA para instalacion de Node

Nota: PPA (Personal Package Archive), sencillamente es un archivo que sirve de referencia para la instalacion de cierto paquete, esto para indicarle al sistema que instale el indicado aqui y omita el del repositorio del SO

Ubicado en la raiz del sistema de archivos y logueado como SUDO

	cd ~
	curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh

el comando curl, lo que esta haciendo es de la URL de deb.nodesource.com, generar un archivo con la informacion de la respuesta de dicho sitio. El valor de la version puede ser cambiado a preferencia.

5. El archivo que se genera como salida (-o o --output) "nodesource_setup.sh" se ejecuta como un bash del sistema, con permisos de admin.
	
	sudo bash nodesource_setup.sh

6. Despues de todo esto el PPA se agrega a la configuracion y ya se puede realizar la instalacion de NodeJS como se instalaria cualquier otro paquete. Recordar hacerlo con permisos de administrador:

	sudo apt install nodejs

7 .Al final de la instalacion se verifica que todo alla quedado instalado correctamente, se verifica la version instalada de NPM y de NodeJS
	
	nodejs -v ===> 10.16.3
	npm -v ===> 6.4.1

8. NOTA: Algunos paquetes que se instalan para el desarrollo de proyecto, requieren algo que se llama build-essentials, para esto se realiza la instacion con el siguiente comando

	sudo apt install build-essential

9. Para hacer la instalacion, se puede crear un directorio nuevo con el comando:
	
	mkdir nombre_del_directorio

10. Para iniciar un proyecto, dentro del nuevo directorio, se ejecuta
	
	npm init

NOTA: Despues de esto, se solicita indicar unos datos que va a requerirse para la creacion del archivo package.json, que basicamente contendra todo lo relacionado, dependencias a paquetes, licencia, versionamiento, scripts....

11. Instalacion MySQL. Primero se actualiza los repositorios
	
	sudo apt update

12. Se hace la instalacion como tal
	
	sudo apt install mysql-server

13. Comando para configurar el servidor de MySQL

	sudo mysql_secure_installation
</p>
