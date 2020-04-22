#!/bin/bash

#Primer parámetro (IP)

#Expresión regular que comprueba que es una ip (StackOverflow)
if [[ $1 =~  ^((25[0-5]|(2[0-4]|1[0-9]|[1-9]|)[0-9])(\.(?!$)|$)){4}$ ]]; then
    ip=$1
else
    echo "El primer parámetro debe ser una IP válida."
fi

#Segundo parámetro (Entrada/Salida)

if [[ $2 =~ entrada|salida ]]; then

    if [[ $3 == "entrada" ]]; then
        acden="INPUT"
    else
        acden="OUTPUT"
    fi
    
else
    echo "El segundo parámetro debe ser \"entrada\" o \"salida\"."
fi

#Tercer parámetro (Aceptar/Denegar)

if [[ $3 =~ aceptar|denegar ]]; then
    
    if [[ $3 == "aceptar" ]]; then
        acden="ACCEPT"
    else
        acden="DROP"
    fi

else
    echo "El tercer parámetro debe ser \"aceptar\" o \"denegar\"."
fi

#Comando

if [[ -n $acden ]] && [[ -n $ensal ]] && [[ -n $ip ]]; then
    iptables -A $ensal -s $ip -j $acden
    echo "Completado."
fi