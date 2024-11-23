#!/bin/bash

echo "Вызвали скрипт добавления новой записи! Файл $1"

data=""

echo "Введите фамилию:"
read surname
echo "Введите имя:"
read name
echo "Введите телефон:"
read phoneNumber
echo "Введите заметку:"
read description

echo "$surname $name|$phoneNumber|$description" >> $1