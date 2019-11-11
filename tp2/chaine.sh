#! /bin/bash
if [ $# -ne 1 ]; then
  echo "Please provide exactly one argument" >&2 # &2 est la sortie d’erreur
  exit 1 # un code de retour faux
fi

  if [ -z "$pidInitial" ]; then
    echo Processus $$ demare
  else
    echo Processus $$ demare avec le processus initial $pidInitial
  fi

  export pidInitial=$$

  if [ $1 -gt 1 ]; then
    k=$(expr $1 - 1)
    echo Il reste $k processus à crée
    ./chaine.sh $k

  else
    echo Fin de chaîne
  fi

echo Processus $$ termine
exit 0
