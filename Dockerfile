# Usa la imagen base de NGINX
FROM nginx:latest

WORKDIR /usr/share/nginx/html

# Instalar Git en Debian
RUN apt-get update && apt-get install -y git && \
    rm -rf /usr/share/nginx/html/* && \  # Elimina archivos previos
    git clone https://github.com/samuelalten/pong-js.git /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
