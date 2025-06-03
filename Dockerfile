FROM nginx:latest

WORKDIR /usr/share/nginx/html

# Copiar los archivos de la aplicación al directorio donde NGINX los servirá
COPY . .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
