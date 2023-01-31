#!/bin/bash

files=$(find "$1" -name "*.txt")

count=0
for file in $files; do
  rm "$file"
  (( count++ ))
done

echo "Se han borrado "$count" ficheros"