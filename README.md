# Usando o Docker | Configurando o Bind9
O Docker é uma plataforma aberta para desenvolver, enviar e executar aplicativos. O Docker permite que você separe seus aplicativos da sua infraestrutura para que você possa entregar software rapidamente. Com o Docker, você pode gerenciar sua infraestrutura da mesma forma que gerencia seus aplicativos. Ao aproveitar as metodologias do Docker para enviar, testar e implantar código, você pode reduzir significativamente o atraso entre escrever o código e executá-lo na produção.

A documentação do Docker é ampla, gratuita e intuitiva. Acesse o site [https://docs.docker.com/get-started/docker-overview/](https://docs.docker.com/get-started/docker-overview/) e saiba mais sobre o Docker.

## Criação do serviço de DNS usando uma imagem Docker personalizada do Ubuntu com Bind9

O uso do docker requer o conhecimento da estrutura do Docker (repositório local e central de imagens, containers, volumes, ect). Os comandos para manipular esses objetos serão apresentados à medida que as necessidades forem surgindo. Vamos começar
listando as imagens existentes no repositório local usando a CLI

### Listando as imagens existentes no repositório local

Use o comando a baixo para verificar as imagens existentes no repositório local do docker.
~~~
docker image ls
~~~

### Construindo uma imagem personalizada com base em um Dockerfile

As imagens podem ser construídas com base nas definições existentes em um arquivo chamado Dockerfile. Neste repositório, personalizamos uma imagem baseada em Ubuntu/Linux com uma instalação recente do Bind9.
Construindo imagens com base em um arquivo *Dockerfile* usando a linha de comandos (CLI)

Exemplo:
~~~
docker build -t <nome_tag> [-f] [Dorckerfile] [caminho base]
~~~

Agora vamos construir uma imagem Docker baseada no arquivo Dockerfile que precisa estar no diretório local (Representado pelo ponto ".")
~~~
docker build -t ubuntu-bind .
~~~

### Criação e execução de container Docker baseado em uma imagem

Pronto, vamos fazer a criação de um container a partir da imagem Docker criada anteriormente existente no respositório local do Docker. Nesse exemplo, vamos mapear as portas 53 (TCP e UDP) para permitir que o container receba requiaições de clientes externos.

~~~
docker run -p 53:53/udp -p 53:53/tcp --name bind9 ubuntu-bind
~~~

### Teste de funcionamento

Para testar o funcionamento, vamos usar o programa *nslookup* (Para Windows) ou *dig* para sistemas baseados em Linux


### Testando com nslookup
~~~
nslookup www.asa.br 127.0.0.1
~~~

### Testando com dig
~~~
dig @127.0.0.1 www.asa.br
~~~

