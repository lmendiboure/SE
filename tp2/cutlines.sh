#! /bin/bash
if [ $# -ne 2 ]; then
  echo "Please provide exactly two arguments" >&2 # &2 est la sortie d’erreur
  exit 1 # un code de retour faux
fi
  if [ ! -e "$1" ]; then
    echo "$0: $1 is not a file name" >&2
    exit 1
  fi

  if [ -d "$1" ]; then
    echo "$0: $1 can not be a directory" >&2
    exit 1
  fi

  while read line; do
    i=1
    for word in $line
    do
       if [ "$i" -eq "$2" ]; then
        echo $word        
       fi
       i=$(expr $i + 1)
    done
  done < "$1"

exit 0
