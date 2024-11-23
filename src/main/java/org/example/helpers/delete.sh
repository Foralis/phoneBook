#!/bin/bash
fileName=$1

. ./helpers/search.sh $fileName

read -p "Уточните запись для удаления:" deleteIndex

stringToDelete=${myArr[$deleteIndex]}

echo "Будет удалена запись:"
echo $stringToDelete