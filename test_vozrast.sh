#!/bin/bash
echo -n "Введите ваш возраст:  "
read age
if [[ $age -ge 0 ]] && [[ $age -lt 12 ]]; then
        echo "Вы еще ребенок"
    elif [[ $age -ge 12 ]] && [[ $age -lt 18 ]]; then
        echo "Вы подросток"
    elif [[ $age -ge 18 ]] && [[ $age -lt 60 ]]; then
        echo "Вы взрослый"
    else
        echo "Вы старичок"
fi
