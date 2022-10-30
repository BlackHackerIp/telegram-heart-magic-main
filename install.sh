#!/bin/bash
clear
echo "--------------------"
echo "|     Кто ты ?     |"
echo "|------------------|"
echo "| 1. Termux        |"
echo "| 2. kali linux    |"
echo "| 3. Переустановить|"
echo "|                  |"
echo "| Введите: 1/2/3   |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pip install telethon
	cd ~/telegram-heart-magic-main
	python3 magic_heart.py
else
	if [ $numb = "2" ]
		then
			echo "У вас нет прав. Запустите install.sh с root правами"
			exit
		else
			apt install python3 python3-pip
            pip3 install telethon
	        cd ~/telegram-heart-magic-main
	        python3 magic_heart.py
		fi
	else
		if [ $numb = "3" ] 
		then
        rm -r ~/telegram-heart-magic-main
		git clone https://github.com/BlackHackerIp/telegram-heart-magic-main
		cd ~/telegram-heart-magic-main

		else
			echo "Некорректный ввод"
		fi
	fi
fi
