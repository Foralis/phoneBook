#!/bin/bash

. ./helpers/utils.sh

fileName=$1

read -p "Введите фамилию и/или имя:" searchText

found=$(awk -v pat="$searchText" -F "$myDelimiter" \
'BEGIN{IGNORECASE=1} $1 ~ pat {print $0}' $fileName)

echo "Результат поиска в телефонной книге $fileName:"

mapfile -t myArr <<< "${found}"

isContinue=true

if [ "${#myArr[*]}" -eq "0" ] || [ "${#myArr[0]}" -eq "0" ]; then
  echo "Записей не найдено"
  isContinue=false
else
  for i in "${!myArr[@]}"; do
    printf "%d)\t%s\n" "$i" "${myArr[$i]}"
  done
fi

