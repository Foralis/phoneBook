#!/bin/bash
fileName=$1

. ./helpers/search.sh $fileName

read -p "Уточните запись для удаления:" deleteIndex

stringToDelete=${myArr[$deleteIndex]}

echo "Будет удалена запись:"
echo $stringToDelete

sed -i "/^$stringToDelete\$/d" $fileName
#sed -i '0,/^Shiriev Rishat|89613577519|qa autoa\$/d' $fileName

#awk '!/pattern/' file > temp && mv temp file
#sed '0,/tat/{/tat/d;}' inputfile