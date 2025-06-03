# Imagen base con Node.js
FROM node:14

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos del repositorio al contenedor
COPY . .

# Instalar las dependencias
RUN npm install

# Exponer el puerto si la app lo necesita
EXPOSE 8000

# Comando para lanzar la aplicación
CMD ["npm", "start"]
