#!/bin/bash

. ./helpers/utils.sh

echo "Добавления новой записи в телефонную книгу $1"

read -p "Введите фамилию:" surname
read -p "Введите имя:" name
read -p "Введите телефон:" phoneNumber
read -p "Введите заметку:" description

surname=$(echo "$surname" | sed -e 's/ //g; s/|//g')
name=$(echo "$name" | sed -e 's/ //g; s/|//g')
phoneNumber=$(echo "$phoneNumber" | sed -e 's/ //g; s/|//g')
description=$(echo "$description" | sed 's/|//g')

echo "после обработки: $surname"

printf "%s %s$myDelimiter%s$myDelimiter%s\n" "$surname" "$name" "$phoneNumber" "$description" >> $1
#echo "$surname $name$myDelimiter$phoneNumber$myDelimiter$description" >> $1