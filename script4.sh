#!/bin/bash

content=`cat archivo`

if [[ "$content" =~ .*$1.* ]]; then
    echo ¡Has acertado!
else
    echo No es correcto.
fi