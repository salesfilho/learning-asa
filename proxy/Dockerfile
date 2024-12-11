FROM nginx:latest

# Copia a configuracao do servidor
COPY default.conf /etc/nginx/conf.d

# Copia uma pagina de erro personalizada
COPY 404.html /usr/share/nginx/html

# Cria o diretorio para o site personalizado
RUN mkdir -p /usr/share/nginx/sales

# Copia pagina/site personalizada
COPY index.html /usr/share/nginx/sales


