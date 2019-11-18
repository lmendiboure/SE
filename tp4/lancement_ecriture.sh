 #! /bin/bash

 rm -f f1 f2 f3

 ./ecriture.sh f1 f2 f3 & ./ecriture.sh f1 f2 f3

wait
