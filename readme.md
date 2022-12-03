## deploy html/css on nginx using docker
### Dockerfile instructions
- FROM ubunutu => spécifie l'image parent
- RUN apt-get update => mettre à jour le système
- RUN apt-get install nginx -y => installer le serveur web nginx
- COPY index.html /var/www/html/ => copie le fichier index dans le répertoire de html du serveur nginx
- COPY DSC_2085.JPG /var/www/html/ => copie l'image de mon portfolio
- COPY nginx.conf /etc/nginx/conf.d/default.conf => copie le fichier de configuration de nginx dans mon image
- EXPOSE 80 => exposer le port 80
- CMD ["nginx","-g","daemon off;"] => la commande exécutée au niveau du container

### clone the project and run the following commands
1. docker build -t my_cv .
2. docker run --name cv -p 80:80 -d my_cv