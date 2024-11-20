# Ambiente da RoboCup Simulação 3D no Docker

## Sobre



## Comandos básicos

Alguns comandos úteis para manipulação dos projetos no docker:

- Informar o IP do servidor: **docker inspect rcssserver3d | grep "IPAddress"**
- Acessar a máquina do servidor: **docker exec -it rcssserver3d bash**
- Acessar a máquina dos times de teste: **docker exec -it rcss3d-times bash**

## Seu ambiente de desenvolvimento

O container de desenvolvimento do agente foi configurado especificamente para o código-base do FC Portugal. Ele inclui o Python e todas as dependências necessárias para o funcionamento adequado do ambiente.

No arquivo docker-compose, é necessário configurar a montagem do volume que aponta para o local onde o código-fonte está armazenado no host.

Para acessar o container de desenvolvimento execute o comando: **docker exec -it rcss3d-agent bash**

Dentro do container é só executar os comandos do time base.