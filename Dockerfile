FROM httpd:latest

WORKDIR /usr/local/apache2/htdocs

# Copiar los archivos del repositorio al directorio donde Apache los servirá
COPY . /usr/local/apache2/htdocs

# Exponer el puerto necesario
EXPOSE 80

CMD ["httpd-foreground"]
