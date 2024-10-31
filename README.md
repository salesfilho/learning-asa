# Usando o GIT
Esta aula é dedicada aos conceitos básicos de GIT tais como:

- Criação de repositório
- Configuração do git na máquina local
- Clonagem de repositório
- Principais comandos de operação do git

## Criação de repositório
A criação de repositórios de código pode ser realizada localmente (máquina local) ou diretamente no repositório central do git. Para fins desse curso, será abordada apenas a criação de repositório na nuvem do git. Para seguir o passo-a-passo de criação de repositório acesse a documentação oficial do github em[ https://docs.github.com/pt/repositories/creating-and-managing-repositories/creating-a-new-repository](https://docs.github.com/pt/repositories/creating-and-managing-repositories/creating-a-new-repository)

## Configurando o git na máquina local
Para utilizar o git na máquina local é necessário fazer a configuração mínima de usuário e email. Para seguir o passo-a-passo de configuração do cliente git na máquina local acesse a documentação oficial do github em [https://docs.github.com/pt/get-started/getting-started-with-git/setting-your-username-in-git](https://docs.github.com/pt/get-started/getting-started-with-git/setting-your-username-in-git)

## Clonando um repositório
É possível clonar um repositório do GitHub.com no computador local ou em um codespace para facilitar a correção de conflitos de mesclagem, adicionar ou remover arquivos e efetuar push de commits maiores. Para seguir o passo-a-passo de clonagem de repositório acesse a documentação oficial do github em [https://docs.github.com/pt/repositories/creating-and-managing-repositories/creating-a-new-repository.
](https://docs.github.com/pt/repositories/creating-and-managing-repositories/cloning-a-repository)

#### Exemplo de clonagem de repositório
~~~
git clone https://github.com/salesfilho/learning-asa.git
~~~

###  Principais comandos de operação do git

#### Verificar o status de rastreamento / repositório atual
~~~
git status
~~~
#### Adicionar todas as alterações ao sistema de rastreamento do git
~~~
git add .
~~~
#### Efetivar as modificações no repositório local
~~~
git commit -m "Mensagem do commit" 
~~~
#### Sincronizar o repositório local com o repositório central (Enviar para a nuvem)
~~~
git push
~~~
