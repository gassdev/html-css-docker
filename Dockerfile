FROM ubuntu

RUN apt-get update

RUN apt-get install nginx -y

COPY index.html /var/www/html/
COPY DSC_2085.JPG /var/www/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx","-g","daemon off;"]