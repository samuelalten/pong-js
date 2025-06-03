FROM httpd:latest

WORKDIR /usr/local/apache2/htdocs

# Copiar los archivos del repositorio al directorio donde Apache los servirá
COPY src/ /usr/local/apache2/htdocs

# Exponer el puerto necesario
EXPOSE 80

CMD ["httpd-foreground"]
