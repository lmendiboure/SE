#! /bin/bash
if [ $# -ne 1 ]; then
  echo "Please provide exactly one argument" >&2 # &2 est la sortie d’erreur
  exit 1 # un code de retour faux
fi
  echo $$ >> arene.txt

  trap "./caesar.sh" INT

  if [ -z "$pidInitial" ]; then
    echo Processus $$ demare
  else
    echo Processus $$ demare avec le processus initial $pidInitial
  fi

  export pidInitial=$$

  if [ $1 -gt 1 ]; then
    k=$(expr $1 - 1)
    echo Il reste $k processus à crée
    ./gladiator.sh $k

  else
    echo Fin de chaîne
  fi

  trap "echo $$ : Morituri Te Salutant; exit 0" USR1

  while :
  do
	echo $$ ": Ave Caesar"
	sleep 5 &
    wait $!
  done

echo Processus $$ termine
exit 0
