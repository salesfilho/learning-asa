FROM ubuntu:latest

RUN apt-get update -y

RUN apt-get upgrade -y

RUN apt-get install postfix -y

# Copiar o arquivo de configuração
COPY main.cf /etc/postfix

# Add User
# Add User
RUN useradd -m bob
RUN useradd -m patrick
RUN useradd -m sales
RUN useradd -m redes
# Set user passord
RUN echo "bob:redes"|chpasswd
RUN echo "patrick:redes"|chpasswd
RUN echo "sales:redes"|chpasswd
RUN echo "redes:redes"|chpasswd

CMD ["postfix", "start-fg"]