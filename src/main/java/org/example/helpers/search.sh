#!/bin/bash

. ./helpers/utils.sh

fileName=$1

read -p "Введите фамилию и/или имя:" searchText

found=$(awk -v pat="$searchText" -F "$myDelimiter" '$1 ~ pat {print $0}' $fileName)

echo "В телефонной книге $fileName найдены следующие записи:"

mapfile -t myArr <<< "${found}"

for i in "${!myArr[@]}"; do
  printf "%d)\t%s\n" "$i" "${myArr[$i]}"
done
