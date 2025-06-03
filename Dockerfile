FROM nginx:latest

WORKDIR /usr/share/nginx/html

# Copiar los archivos del repositorio al directorio donde NGINX los servirá
COPY . /usr/share/nginx/html

# Exponer el puerto necesario
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
