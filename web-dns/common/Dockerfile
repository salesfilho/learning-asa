# Base da imagem
FROM ubuntu:latest 

# O comando RUN serve para executar um comando na imagem
# Nesse caso abaixo, estamos atualizando repositórios de pacotes
RUN apt update -y 

RUN apt upgrade -y 

# Abaixo, estamos atualizando os pacotes constantes na imagem
RUN apt install bind9 dnsutils -y

RUN apt install openssl -y

# Todo container docker precisa de um ponto de entrada/execução para 
# manter o container em funcionamento
# ENTRYPOINT [ "executable" ]
# No caso abaixo, o serviço chamado named (bind) é executado em primeiro plano
EXPOSE 53/tcp
EXPOSE 53/udp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]