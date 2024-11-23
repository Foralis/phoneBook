#!/bin/bash
fileName=$1

read -p "Введите фамилию и/или имя:" searchText

found=$(awk -v pat="$searchText" -F "|" '$1 ~ pat {print $0}' $fileName)

echo "В телефонной книге $fileName найдены следующие записи:"

mapfile -t myArr <<< "${found}"

for i in "${!myArr[@]}"; do
  printf "%d)\t%s\n" "$i" "${myArr[$i]}"
done
