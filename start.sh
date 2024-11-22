#!/bin/bash

# Verifica se o número de parâmetros é igual a 2
if [ "$#" -ne 2 ]; then
  echo "Uso: $0 nome_time ip_servidor"
  exit 1
fi

nome=$1
ip=$2

if [ "$nome" == "BahiaRT" ] || [ "$nome" == "FCPortugal" ] || [ "$nome" == "ITAndroids" ] || [ "$nome" == "magmaOffenburg" ]; then
  echo "Iniciando o time $nome"
else
  echo "Nome do time invalido."
  echo -e "Lista de times validos:\nBahiaRT\nFCPortugal\nITAndroids\nmagmaOffenburg"
  exit 1
fi 

docker exec -t rcss3d-times sh -c "./start_time.sh $nome $ip"
