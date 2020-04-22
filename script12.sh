#!/bin/bash

if [[ $1 -lt 11 ]] && [[ $1 -gt -1 ]] && [[ -n $1 ]]; then
    
    for i in `seq 0 10`; do
        
        resultado=$((i * $1))
        echo "${i} x ${1} = ${resultado}"

    done

else

    echo "Introduce un número del 0 al 10."

fi