#!/bin/bash

# arithmatic expressions are used as `for' loop conditions

for (( i=1; i <= 12; i ++ ))
do
    for (( j=1; j <= 12; j ++ ))
    do
        echo -ne "$(( j * i ))\t"
    done
    echo
done
