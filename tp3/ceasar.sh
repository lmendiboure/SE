#! /bin/bash
if [ ! -f arene.txt ]; then
  echo "arene.txt does not exist" >&2 # &2 est la sortie d’erreur
  exit 1 # un code de retour faux
fi

while read line; do
  echo Ceasar kill $line
  kill -USR1 $line       
done < arene.txt

rm arene.txt
exit 0
