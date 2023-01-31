#!/bin/bash

precipitaciones=()
while IFS=$'\t' read -r -a myArray
do
precipitaciones+=(${myArray[1]})
done < "\Users\VSPC-EARTHQUAKEV3\Desktop\precipitaciones.txt"
sum=$(IFS=+; echo "$((${precipitaciones[*]}))")
total=${#precipitaciones[@]}
echo "La media de precipitaciones es "$((sum / total))