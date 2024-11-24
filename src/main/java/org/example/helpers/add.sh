#!/bin/bash

. ./helpers/utils.sh

echo "Добавления новой записи в телефонную книгу $1"

read -p "Введите фамилию:" surname
read -p "Введите имя:" name
read -p "Введите телефон:" phoneNumber
read -p "Введите заметку:" description


printf "%s %s$myDelimiter%s$myDelimiter%s\n" "$surname" "$name" "$phoneNumber" "$description" >> $1
#echo "$surname $name$myDelimiter$phoneNumber$myDelimiter$description" >> $1