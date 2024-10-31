# learning-asa
Esta disciplina tem como principal objetivo implementar os serviços básicos de rede usando sistemas baseados em Linux, incluindo servidor de DNS, servidor Web, Proxy e correio eletrônico.

Ao término do curso, espera-se que os alunos sejam capazes de:
1. Compreender o funcionamento de serviços em Linux funcionando em Containers Docker
2. Realiar a configuração de servidores em containers
3. Implemetar um provedor de serviços de conteúdo da internet

# Estratégias e Conteúdo programático
- Conceitos básicos dos serviços
- Práticas de implementação em diversos casos de uso
- Apredizado baseado em problemas
- Aprendizado por projetos

# Conteúdos

## Parte 0: GIT

- Criação de repositório
- Clonagem de repositório
- Principais comandos de operação do git

~~~
git status
~~~
git add .
git commit -m "Mensagem do commite" 
git push
ˋˋˋ

## Parte 1: DNS
## Parte 2: Docker
### Como criar uma imagem personalizado de um container Docker?
1. Cria um arquivo chamado Dockerfile contendo as instruções de personalização da imagem.
2. Executa o camando para criar a imagem, exemplo:
´´
// docker build -t <tagname> base_dir 
$ docker build -t ubuntu-bind .
´´
### Criar e executar um container com base em uma imagem existente?

// docker run [parametros] nome_imagem
$ docker run -d -p 53:53/udp -p 53:53/tcp --name bind9 ubuntu-bind
´´


## Parte 3: Prática de DNS + Docker
É importante ler a documentação oficial do bind9, assim como também ler os comentários presentes dentro dos arquivos de configuração, pois eles trazem informações relevantes para a prática da configuração e manutenção do serviço de DNS.



