#!/bin/bash
fileName=$1

. ./helpers/search.sh $fileName

read -p "Уточните запись для удаления:" deleteIndex

stringToDelete=${myArr[$deleteIndex]}

echo "Будет удалена запись:"

echo $stringToDelete

pat="^"
pat+="$stringToDelete"
pat+="\$"

echo "Такой паттерн:"
echo $pat

sed -i "0,/$pat/d" $fileName

#awk '!/pattern/' file > temp && mv temp file
#sed '0,/tat/{/tat/d;}' inputfile