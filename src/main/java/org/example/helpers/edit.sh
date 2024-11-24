#!/bin/bash
fileName=$1

. ./helpers/utils.sh
. ./helpers/search.sh $fileName

read -p "Уточните запись для редактирования:" editIndex

stringToEdit=${myArr[$editIndex]}

echo "Будет отредактирована запись:"
echo $stringToEdit

nameAndSurname=$(echo $stringToEdit | awk -F "$myDelimiter" '{print $1}')
oldSurname=$(echo $nameAndSurname | awk '{print $1}')
oldName=$(echo $nameAndSurname | awk '{print $2}')
oldPhone=$(echo $stringToEdit | awk -F "$myDelimiter" '{print $2}')
oldDescription=$(echo $stringToEdit | awk -F "$myDelimiter" '{print $3}')

read -e -p "Введите новую фамилию:" -i "$oldSurname" newSurname
read -e -p "Введите новое имя:" -i "$oldName" newName
read -e -p "Введите новый телефон:" -i "$oldPhone" newPhone
read -e -p "Введите новую заметку:" -i "$oldDescription" newDescription

newString=$(printf "%s %s$myDelimiter%s$myDelimiter%s\n" "$newSurname" "$newName" "$newPhone" "$newDescription")

echo "Новая строка будет выглядет так: " $newString

sed -i "0,/^$stringToEdit\$/{/^$stringToEdit\$/d;}" $fileName
echo "$newString" >> $fileName