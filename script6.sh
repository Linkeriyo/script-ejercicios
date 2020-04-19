#!/bin/bash

read -p "¿Cuántos años tienes? " edad

if [[ $edad -lt 18 ]]; then
    echo Eres menor de edad.
else
    echo Eres mayor de edad.
fi
