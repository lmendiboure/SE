#! /bin/bash
if [ $# -ne 1 ]; then
  echo "Please provide exactly one arguments" >&2 # &2 est la sortie d’erreur
  exit 1 # un code de retour faux
fi
  if [ -d "$1" ]; then
    echo "$0: $1 can not be an existing directory" >&2
    exit 1
  fi

  exec 3>"$1"
  while read line; do
    echo $line
    echo $line >&3
  done

exit 0
