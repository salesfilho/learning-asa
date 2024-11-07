# Usando o Docker | Configurando o NGINX
O Docker é uma plataforma aberta para desenvolver, enviar e executar aplicativos. O Docker permite que você separe seus aplicativos da sua infraestrutura para que você possa entregar software rapidamente. Com o Docker, você pode gerenciar sua infraestrutura da mesma forma que gerencia seus aplicativos. Ao aproveitar as metodologias do Docker para enviar, testar e implantar código, você pode reduzir significativamente o atraso entre escrever o código e executá-lo na produção.

A documentação do Docker é ampla, gratuita e intuitiva. Acesse o site [https://docs.docker.com/get-started/docker-overview/](https://docs.docker.com/get-started/docker-overview/) e saiba mais sobre o Docker.

## Criação do serviço de DNS usando a imagem Oficial do Nginx

Inicialmente, é recomendado consultar a documentação oficial das imagens utilizadas diretamente em[ http://hub.docker.com.](http://hub.docker.com.). Faça isso com a imagem do Nginx para aprofundar o conhecimento. Feito isso, vamos criar o Dockerfile (veja o exemplo) e executar os comandos de criar a imagem e também o container.


Criando a imagem:
~~~
docker build -t web-nginx .
~~~

### Criação e execução de container Docker baseado em uma imagem

Pronto, vamos fazer a criação de um container a partir da imagem Docker criada anteriormente existente no respositório local do Docker. Nesse exemplo, vamos mapear as portas 80/tcp para permitir que o container receba requiaições de clientes externos.

~~~
docker run -p 80:80/tcp --name web web-ngin
~~~

### Teste de funcionamento

Usando o navegador, aponte para o endereço *http://localhost*

~~~
http://localhost
~~~
