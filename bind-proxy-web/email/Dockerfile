FROM debian:latest

RUN apt update -y
RUN apt upgrade -y

RUN apt install postfix dnsutils dovecot-imapd dovecot-pop3d telnet nano syslog-ng -y

COPY ./postfix/main.cf /etc/postfix
# COPY ./dovecot/* /etc/dovecot/conf.d
# COPY mailname /etc
COPY mail.sh /etc/init.d

RUN chmod 755 /etc/init.d/mail.sh

EXPOSE 25/tcp
EXPOSE 587/tcp
EXPOSE 110/tcp
EXPOSE 143/tcp

CMD ["sh", "-c", "/etc/init.d/mail.sh ; service syslog-ng start ; service postfix start ; service dovecot start ; tail -F /var/log/mail.log"]