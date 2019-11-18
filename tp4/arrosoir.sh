#! /bin/bash

function boucleRec() {
  x=$1
  if [ "$x" -ne 0 ]; then
    # increment value in file
    line=$(head -n 1 plante)
    line=$((line+1))
    echo $line > plante

    # call recursively
    x=$((x-1))
    boucleRec $x
  else 
    echo "X n’est plus"
  fi
}

function boucleImp() {
  for i in `seq 1 $1`;
  do
    line=$(head -n 1 plante)
    line=$((line+1))
    echo $line > plante
  done
}

function arroser() {  
  boucleImp $1
}

#arroser $1
boucleRec $1
