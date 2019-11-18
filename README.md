# Correction des TPs de système d'exploitation 2019-2020


## Quelques rappels sur les choses à maitriser ##
----------------------

* L'accès aux variables passées en paramètres du programme :
	* $@ : liste des paramètres (=> utilisable dans une fonction for)
	* $# : nombre de paramètres

* La syntaxe des boucles for et while : 
	* for a in b; do; ...; done
	* while [ a -gt b ]; do; ...; done

* Les conditions et comparateurs :
	* lt, gt, eq, etc.
	* if, elif, else
	* if [[ $a -eq 0 ]]; then; ...; fi
	* _Note : On n'oublie pas les espaces, sans quoi cela ne fonctionne pas !_ 

* L'instantiation/l'incrémentation de variables :
	* a=$2
	* a=$((a++))
	* _Note : Pour accéder au contenu d'une variable on utilise _ **$var** _pour la modifier on utilise uniquement_ **var**


* La lecture/l'écriture dans un fichier :
	* read v < file.txt
	* echo $v > file.txt
	* _Note : Si on cherche à écrire dans un fichier_ **>** _remplacera le contenu existant alors que_ **>>** _écrira à la suite !_

* La lecture ligne à ligne/mot à mot dans un fichier :
	* while read line; do; for word in $line; do; ... ; done ; done < file.txt

* L'utilisation de signaux (émission/réception) :
	* kill -USR1 PID
	* trap 'echo coucou' USR1

* La déclaration de variables accessible par les processus fils :
	* export ...

* L'appel/la déclaration de fonctions :
	* function test(){ }
	* test $param1
	* _Note : Pour qu'une fonction puisse utiliser des paramètres ($1, $2, etc.) on n'oublie pas de les passer en paramètre !_

