#!/bin/bash
fileName=$1

echo "Введите фамилию и/или имя:"
read searchText

oldIFS=$IFS
IFS=$'\n'
found=$(awk -v pat="$searchText" -F "|" '$1 ~ pat {print $0}' $fileName)


echo "В телефонной книге $fileName найдены следующие записи:"

for i in ${found[@]}; do
    echo $i
done

IFS=$oldIFS