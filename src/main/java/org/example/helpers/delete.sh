#!/bin/bash
fileName=$1

. ./helpers/search.sh $fileName

echo ${found[2]}

read -p "Уточните запись для удаления:" deleteIndex

stringToDelete=${found[$deleteIndex]}

echo "Будет удалена запись:"
echo ${found[1]}
echo $stringToDelete