# Configurando o DNS (Bind9)
Esta aula é dedicada aos conceitos básicos do serviço de resolução de nomes e abrange temas como:

- Conceitos de DNS
- Documentação técnica
- Configuração de zonas DNS
- Base de dados de zonas de DNS

Os arquivos presentes nesta branch servem como modelo para implementação do serviço de DNS usando o Bind9

## DNS
O sistema de nomenclatura DNS é organizado como uma estrutura de árvore composta de vários níveis e, portanto, cria naturalmente um sistema distribuído. Cada nó na árvore recebe um rótulo que define seu Domínio (sua área ou zona) de Autoridade. O nó mais alto na árvore é o Domínio Raiz; ele delega para Domínios no próximo nível que são genericamente conhecidos como Domínios de Nível Superior (TLDs). Eles, por sua vez, delegam para Domínios de Segundo Nível (SLDs), e assim por diante. Os Domínios de Nível Superior (TLDs) incluem um grupo especial de TLDs chamado Domínios de Nível Superior de Código de País (ccTLDs), no qual cada país recebe um código de país exclusivo de dois caracteres da ISO 3166 como seu domínio.

## Documentação técnica
O [BIND 9 Administrator Reference Manual](https://bind9.readthedocs.io/en/v9.18.31/index.html) compila um conjunto abrangente e didático de informações técnicas sobre o serviço de resolução de nomes, casos de uso e exemplo de configuração. A leitura desse manual é altamente recomendada para administradores de serviço de DNS.

## Instalação e configuração do Bind9 no Ubuntu Linux
O bind9 pode ser instalado e configurado no sistema Ubuntu Linux. Um passo-a-passo de pode ser obtido no site oficial de documentação do Ubuntu em [https://ubuntu.com/server/docs/domain-name-service-dns](https://ubuntu.com/server/docs/domain-name-service-dns). Os pricipais comandos para instalação são:

### Instalação do bind9 e ferramentas auxiliares

~~~
apt install bind9 dnsutils -y
~~~

### Arquivos principais de configuração

~~~
/etc/bind/named.conf.options (Opções Globaais de DNS)
/etc/bind/named.conf.local (Configure suas zonas aqui)
/etc/bind/named.conf.default-zones (Zonas padrão como localhost, e root servers)
~~~

## Configuração de zonas
No bind9, a configuração de zonas é realizada por meio dos arquivos de parametrização orquestrado pelo arquivo **named.conf** que vem pré-configurado na instalação padrão. Assim, na maioria dos casos, não é necessário alterar diretamente o arquivo **named.conf**. Em vez disso, modifica-se o arquivo **named.conf.local**

### Exemplo de definição de zona no aquivo named.conf.local

~~~
zone "asa.br"{
    type master;
    file "/etc/bind/db.asa.br";
    allow-transfer {
        127.0.0.1;
    };
};
~~~
### Exemplo de definição de banco de dados de zona de DNS

~~~
;
; BIND data file for asa.br zone
;
$TTL	604800
@	IN	SOA	ns.asa.br. root.asa.br. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@		IN	NS	ns.
@		IN	A	127.0.0.1
www		IN	A	10.24.6.54
portal	IN	CNAME	www
~~~
