FROM node:20-alpine

WORKDIR /app

# Copiar archivos estáticos
COPY . .

# Instalar servidor estático
RUN npm install -g serve

# Exponer puerto
EXPOSE 3000

# Iniciar servidor
CMD ["serve", "-s", ".", "-l", "3000"]
