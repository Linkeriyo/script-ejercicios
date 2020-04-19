#!/bin/bash

numero=0
while [[ $numero != 4 ]]; do

    echo "Elige una opción:"
    echo "(1) Suma"
    echo "   Lee dos números y suma."
    echo "(2) Resta"
    echo "   Lee dos números y resta."
    echo "(3) Multiplicación"
    echo "   Lee dos números y multiplica."
    echo "(4) Salir"

    read -p "Introduce uno de los números anteriores: " numero
    echo

    case "$numero" in 
        [1])
            read -p "primer numero: " primer
            read -p "segundo numero: " segundo
            echo /n $((primer + segundo))
            ;;
        [2])
            read -p "primer numero: " primer
            read -p "segundo numero: " segundo
            echo $((primer - segundo))
            ;;
        [3])
            read -p "primer numero: " primer
            read -p "segundo numero: " segundo
            echo $((primer * segundo))
            ;;
    esac

    echo
    echo
done