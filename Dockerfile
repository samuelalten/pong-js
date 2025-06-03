# Usa la imagen base de NGINX
FROM nginx:latest

# Define el directorio donde estarán los archivos de la aplicación
WORKDIR /usr/share/nginx/html

# Copia los archivos de la aplicación al contenedor
COPY . .

# Expone el puerto 80
EXPOSE 80

# Inicia NGINX
CMD ["nginx", "-g", "daemon off;"]
