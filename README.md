# Usando o Docker
O Docker é uma plataforma aberta para desenvolver, enviar e executar aplicativos. O Docker permite que você separe seus aplicativos da sua infraestrutura para que você possa entregar software rapidamente. Com o Docker, você pode gerenciar sua infraestrutura da mesma forma que gerencia seus aplicativos. Ao aproveitar as metodologias do Docker para enviar, testar e implantar código, você pode reduzir significativamente o atraso entre escrever o código e executá-lo na produção.

A documentação do Docker é ampla, gratuita e intuitiva. Acesse o site [https://docs.docker.com/get-started/docker-overview/](https://docs.docker.com/get-started/docker-overview/) e saiba mais sobre o Docker.

# Conteúdos

Listando as imagens existentes no repositório local usando a CLI

~~~
docker image ls
~~~

Construindo imagens com base em um arquivo *Dockerfile* usando a CLI

Exemplo:
~~~
docker build -t <nome_tag> [-f] [Dorckerfile] [caminho base]
~~~

Este exemplo constroe uma imagem baseada no arquivo Dockerfile que precisa estar no diretório local (Representado pelo ponto ".")
~~~
docker build -t ubuntu-bind .
~~~

Criando um container a partir da imagem existente no respositório local de imagens docker

~~~
docker run -p 53:53/udp -p 53:53/tcp --name bind9 ubuntu-bind
~~~

Testando o funcionamento do servidor Bind na máquina hospedeira (local)

~~~
nslookup www.asa.br 127.0.0.1
~~~
