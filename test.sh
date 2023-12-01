#!/bin/bash

# Initialize variables
counter=0
modulo=4

# File to read
fileToUpdate="test.txt"

# Trap to read and display the value on receiving SIGUSR1
trap '
    counter=$(((counter%modulo)+1))
    value=$(sed -n "${counter}p" "$fileToUpdate")
    echo "Read value from line $counter: $value"
' SIGUSR1

while true; do
    kill -SIGUSR1 $$

    sleep 1
done
