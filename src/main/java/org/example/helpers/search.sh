#!/bin/bash
fileName=$1

read -p "Введите фамилию и/или имя:" searchText

oldIFS=$IFS
IFS=$'\n'
found=$(awk -v pat="$searchText" -F "|" '$1 ~ pat {print $0}' $fileName)

echo "В телефонной книге $fileName найдены следующие записи:"

index=0

for i in ${found[@]}; do
    index=$(($index + 1))
    printf '%d) %s \n' $index $i
done

#IFS=$oldIFS