# Usa la imagen base de NGINX
FROM nginx:latest

WORKDIR /usr/share/nginx/html

# Clonar el repositorio desde GitHub dentro del contenedor
RUN apk add --no-cache git && \
    git clone https://github.com/samuelalten/pong-js.git . 

# Exponer el puerto de NGINX
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
