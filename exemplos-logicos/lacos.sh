#!/usr/bin/env bash

# 1. Exibir sequência de 0 a 10;
# 2. Calcular quais números do intervalo é múltiplo de 2;
# 3. Inserir mensagem informando quais são os múltiplos.

echo "##### for:
 "
for (( i = 0; i < 11; i++ ))
do
  if [[ $i%2 -eq 0 ]]
    then
      echo "$i é divisível por 2"
    else
      echo "$i"
  fi
done

echo "
##### for (+seq):
 "
for i in $(seq 0 10)
do
  if [[ $i%2 -eq 0 ]]
    then
      echo "$i é divisível por 2"
    else
      echo "$i"
  fi
done


echo "
##### for (+array):
 "
numeros=(0 1 2 3 4 5 6 7 8 9 10)

for i in "${numeros[@]}"
do
  [[ $i%2 -eq 0 ]] && echo "$i é divisível por 2" || echo "$i"
done
