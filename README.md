# Apontando o serviço os registros de DNS para o Servidor Web

Agora que temos o servidor de DNS e o servidor Web configurados, é hora de finalizar esse percurso vinculando esses dois serviços. As tarefas necessárias para realizar essa vinculação são:

1. Configurar os registros corretamente no DNS
2. Executar o servidor de DNS
3. Configurar o servidor o web
4. Executar o servidor web
5. Configurar o cliente para usar o servidor de DNS para resolver nomes (Congiguração de IP / DNS)
6. Apontar o navegador para o endereço correto, exemplo: www.asa.br
7. Verificar os logs dos serviços
   
## Praticar é preciso

Essa deve ser a atividade que deve ser realizada antes de dar andamento no restante do curso. Nessa atividade, deve ser criada uma estrutura de arquivos e diretórios em um mesmo projeto (repositório) contendo a seguinte estrutura:
~~~
- atividade-asa-01
  - dns
     - Dockerfile 
     - db.asa.br
     - named.conf.local
  - web
    - Dockerfile
    - index.html
- service.sh
- README.md
~~~
O arquivo **service.sh** é um script em bash que automatiza as operações de início (start) e parada (stop) dos serviços. 

**Como usar:**
~~~
./service.sh <serviço> <ação>
~~~

**Exemplo para iniciar o serviço de DNS**
~~~
./service.sh dns start
~~~

Todos os comandos para criar/destruir as imagens, containers etc devem ser encapsulados e automatizados no script **service.sh**

