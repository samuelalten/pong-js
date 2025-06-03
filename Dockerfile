FROM nginx:latest

WORKDIR /usr/share/nginx/html

# Instalar Git en Debian
RUN apt-get update && apt-get install -y git && \
    rm -rf /usr/share/nginx/html/* && \
    git clone https://github.com/samuelalten/pong-js.git /tmp/pong && \
    mv /tmp/pong/* /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
