#!/bin/bash
#Написать Bash-скрипт который будет создавать пользователя по переданным аргументам
#user_name home_folder ssh_access enable

echo -n "Введите имя пользователя  "
read user_name

echo -n "Введите домашнюю директорию "
read home_folder

sudo mkdir /home/$home_folder
sudo useradd $user_name -b /home/$home_folder -m

echo -n "Предоставить пользователю SSH доступ? (Y - да)  "
read yesno

if [ $yesno=Y ] || [ $yesno=y ] || [ $yesno=yes ] || [ $yesno=Yes]  || [ $yesno=YES ]; then

        #разрешение новому юзеру ssh доступ
        #echo "AllowUsers    $user_name" >> /etc/ssh/sshd_config
        echo "Пользователю $user_name доступ SSH предоставлен"

    else
    echo "Пользователю $user_name доступ SSH предоставлен не будет"
fi 

#вывод на экран результата
#ls -l /home/
#cat /etc/passwd

#вывод на экран результата
#cat /etc/ssh/sshd_config