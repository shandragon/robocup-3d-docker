# Ambiente da RoboCup Simulação 3D no Docker

## Sobre



## Comandos básicos

Alguns comandos úteis para manipulação dos projetos no docker:

- Informar o IP do servidor: **docker inspect rcssserver3d | grep "IPAddress"**
- Acessar a máquina do servidor: **docker exec -it rcssserver3d bash**
- Acessar a máquina dos times de teste: **docker exec -it times bash**