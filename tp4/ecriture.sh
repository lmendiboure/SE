#! /bin/bash

if [ $# -lt 1 ] ; then
  echo "Il faut au moins un parametre"
  exit 1
fi
for elem in "$@" ; do

  # lock
  ./P.sh "$elem".lock

  if [ ! -e "$elem" ] ; then
    echo premier $$ > "$elem"
  else
    echo suivant $$ >> "$elem"
  fi

  # un-lock
  ./V.sh "$elem".lock

done
