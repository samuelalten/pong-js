FROM nginx:latest

WORKDIR /usr/share/nginx/html

# Instalar Git en Debian
RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/samuelalten/pong-js.git .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
