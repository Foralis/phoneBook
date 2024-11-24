#!/bin/bash
fileName=$1

. ./helpers/search.sh $fileName

read -p "Уточните запись для редактирования:" editIndex

stringToEdit=${myArr[$editIndex]}

echo "Будет отредактирована запись:"
echo $stringToEdit

nameAndSurname=$(echo $stringToEdit | awk -F "|" '{print $1}')
oldSurname=$(echo $nameAndSurname | awk '{print $1}')
oldName=$(echo $nameAndSurname | awk '{print $2}')
oldPhone=$(echo $stringToEdit | awk -F "|" '{print $2}')
oldDescription=$(echo $stringToEdit | awk -F "|" '{print $3}')


read -e -p "Введите новую фамилию:" -i "$oldSurname" newSurname
read -e -p "Введите новое имя:" -i "$oldName" newName
read -e -p "Введите новый телефон:" -i "$oldPhone" newPhone
read -e -p "Введите новую заметку:" -i "$oldDescription" newDescription

newString=$(echo "$newSurname $newName|$newPhone|$newName")

echo "Новая строка будет выглядет так: " $newString