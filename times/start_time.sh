#!/usr/bin/env bash

# Verifica se o número de parâmetros é igual a 2
if [ "$#" -ne 2 ]; then
  echo "Uso: $0 nome_time ip_servidor"
  exit 1
fi

nome=$1
ip=$2

cd $nome

./start.sh $ip

while true; do sleep 3600; done
