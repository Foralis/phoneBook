#!/bin/bash
fileName=$1

. ./helpers/search.sh $fileName

if [ "$isContinue" = true ]; then
  read -p "Подтвердите удаление, введя индекс записи:" deleteIndex

  stringToDelete=${myArr[$deleteIndex]}

  echo "Будет удалена запись:"
  echo $stringToDelete

  sed -i "0,/^$stringToDelete\$/{/^$stringToDelete\$/d;}" $fileName
else
  echo "Ничего не будет удалено."
fi