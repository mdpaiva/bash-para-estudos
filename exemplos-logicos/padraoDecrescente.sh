#!/usr/bin/env bash

  inicio=0
  final=100

  [ $inicio -ge $final ] && exit 1

for i in $(seq $inicio $final)
do
  for j in $(seq $i $final)
  do
    printf "§"
  done
  printf "\n"
done
