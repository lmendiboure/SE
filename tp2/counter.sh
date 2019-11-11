#! /bin/bash
if [ "$1" == "" ]; then
  echo "Please provide exactly one argument" >&2 # &2 est la sortie d’erreur
  echo "1"
  exit 1 # un code de retour faux
fi
  if [ ! -f "$1" ]; then
    echo "$0: $1 is not a file name"
    echo "1"
    exit 1
  fi

  while true ; do
      read v < "$1"
      i=$(expr $v + 1)
      echo "$i"
      echo "$i" > "$1"
      sleep 1
  done

echo "0"
exit 0
