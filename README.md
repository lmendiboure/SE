# Correction des TPs de système d'exploitation 2019-2020


## Quelques rappels sur les choses à maitriser ##
----------------------

* L'accès aux variables passées en paramètres du programme :
	* $@ : list
	* $# : nombre

* La syntaxe des boucles For et while : 
	* for a in b; do; ...; done
	* while [ a -gt b ]; do; ...; done

* L'instantiation/l'incrémentation de variables :
	* a=$2
	* a=$((a++))
	* *Note : Pour accéder au contenu d'une variable on utilise * **$var** *pour la modifier on utilise uniquement* **var**


* La lecture/l'écriture dans un fichier :
	* read v < file.txt
	* echo $v > file.txt
	* *Note : Si on cherche à écrire dans un fichier * **>** *remplacera le contenu existant alors que* **>>** *écrira à la suite !*

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
	* *Note : Pour qu'une fonction puisse utiliser des paramètres ($1, $2, etc.) on n'oublie pas de les passer en paramètre !*

