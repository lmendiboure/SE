#! /bin/bash

function deepness {
  for i in `seq 1 $1`;
  do
    printf "%s " "----"
  done
  printf "\n"
}

function parseRec {
  d=$(deepness $2)
  if [ -d $1 ]; then
    
    # do not print root folder
    if [ $2 -gt 0 ]; then
      echo $d $1
    fi

    # recurse for children
    s=$(ls $1)
    cd $1
    for f in $s; do
      parseRec $f $(($2+1))
    done
    cd ..
  elif [ -f $1 ]; then
    echo $d $1
  else 
    echo $1 is invalid
    exit 1
  fi
}

p=$1
if [ -z $p ]; then
  p="."
fi

parseRec $p 0

exit 0
