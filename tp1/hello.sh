#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo Hello Sargeras !
else
while [[ $# -ne 0 ]]; do #IE : Tant que l'arg 1 n'est pas nul, on itère !
  echo "Hello $1 !"
  shift
  shift  # SOLUTION SIMPLE : AJOUTER un SHIFT pour SAUTER un ARGUMENT, MARCHE EGALEMENT DANS BOUCLE FOR
done
fi

<<COMMENT
#SOLUTION 1
if [[ $# -eq 0 ]]; then
	echo Hello Sargeras !
else
for param in "$@"; do
 echo "Hello $param !"
done

fi
COMMENT
