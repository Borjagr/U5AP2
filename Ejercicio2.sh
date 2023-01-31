#!/bin/bash

declare -a dias=("Lunes" "Martes" "Miercoles" "Jueves" "Viernes" "Sabado" "Domingo")

while IFS=$'\t' read -r -a myArray
do
if [ ${myArray[1]} -eq 0 ]; then
    if [ ${myArray[0]} -gt 7 ]; then
        echo "El "${dias[${myArray[0]}-8]}" no llovio"
    else
        echo "El "${dias[${myArray[0]}-1]}" no llovio"
    fi
fi
done < "\Users\VSPC-EARTHQUAKEV3\Desktop\precipitaciones.txt"