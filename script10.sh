#!/bin/bash

echo "       - Menú de compra -"
echo "(1) Monster Verde 500ml   1,50€"
echo "(2) Coca-Cola 330ml       1€"
echo "(3) Nestea 330ml          1€"
echo "(4) Cheetos 100g          1,25€"
echo "(5) Lays 150g             1,60€"
echo "(6) Doritos 150g          1,60€"
echo
read -p "Elige una opción: " option

prices=('150' '100' '100' '125' '160' '160')
price=${prices[$((option - 1))]}
don=0
money=0

while [[ $don -eq 0 ]]; do
    read -p "Introduce el dinero (en céntimos): " input
    money=$((money + input))
    
    if [[ $money -gt $price ]]; then
        echo "Operación completada, su cambio: $((money - price))"
        don=1
    elif [[ $money -eq $price ]]; then
        echo "Operación completada."
        don=1
    else
        echo "Faltan $((price - money)) céntimos."
    fi
done

echo "Gracias buen provecho"