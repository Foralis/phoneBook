#!/bin/bash
fileName
if [ "$#" -lt 1 ]; then
  echo> tmp.txt
else
  echo> $1
fi

PS3="Телефонная книга. Выберите действие:"
select item in add delete edit list_all search_by_name; do
    case $item in
    add)
      echo "Выбрали добавление новой записи."
      ;;
    delete)
      echo "Выбрали удаление записи."
      ;;
    edit)
      echo "Выбрали редактирование записи."
      ;;
    list_all)
      echo "Выбрали вывод списка всех записей."
      ;;
    search_by_name)
      echo "Выбрали поиск записи."
      ;;
    esac
done