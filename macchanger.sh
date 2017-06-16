###########Se comprueba que macchanger esta instalado y si no lo esta se instala#############
sudo apt-get install macchanger
#############################################################################################

###################Seleccionar opcion del menu###############################################
clear && echo -en "\e[3J"
echo -e "\e[4m\e[1m\e[32m_______________MacChanger_______________"	
echo -e "\e[0m\e[5mChange MAC adress into a random number or a manual number."
echo -e ""
echo -e "\e[93m	0 - Random all"
echo -e "\e[35m	1 - Random eth0"
echo -e "\e[35m	2 - Random wlan0"
echo -e "\e[35m	3 - Random wlan1"
echo -e "\e[35m	4 - Random wlan2"
echo -e "\e[95m	5 - Manual eth0"
echo -e "\e[95m	6 - Manual wlan0"
echo -e "\e[95m	7 - Manual wlan1"
echo -e "\e[95m	8 - Manual wlan2"
echo -e "\e[93m	9 - View all MAC"


read n
case $n in
    0)  echo -e "\e[96m _________eth0________"
	ifconfig eth0 down
	sleep 1
	macchanger -r eth0
	ifconfig eth0 up
	echo -e "\e[94m ________wlan0________"
	ifconfig wlan0 down
	sleep 1
	macchanger -r wlan0
	ifconfig wlan0 up
	echo -e "\e[36m ________wlan1________"
	ifconfig wlan1 down
	sleep 1
	macchanger -r wlan1
	ifconfig wlan1 up
	echo -e "\e[34m ________wlan2________"
	ifconfig wlan2 down
	sleep 1
	macchanger -r wlan2
	ifconfig wlan2 up
	sudo service network-manager restart
	;;
    1)  echo -e "\e[96m ________eth0________"
	ifconfig eth0 down
	sleep 1
	macchanger -r eth0
	ifconfig eth0 up
	sudo service network-manager restart
	;;
    2)  echo -e "\e[94m _______wlan0________"
	ifconfig wlan0 down
	sleep 1
	macchanger -r wlan0
	ifconfig wlan0 up
	sudo service network-manager restart
	;;
    3)  echo -e "\e[36m _______wlan1________"
	ifconfig wlan1 down
	sleep 1
	macchanger -r wlan1
	ifconfig wlan1 up
	sudo service network-manager restart
	;;
    4)  echo -e "\e[34m _______wlan2________"
	ifconfig wlan2 down
	sleep 1
	macchanger -r wlan2
	ifconfig wlan2 up
	sudo service network-manager restart
	;;
    5)  echo -e "Introduce MAC:" 
	read a
	ifconfig eth0 down
	macchanger -m $a eth0
	ifconfig eth0 up
	sudo service network-manager restart
        ;;
    6)  echo -e "Introduce MAC:" 
	read a
	ifconfig wlan0 down
	macchanger -m $a wlan0
	ifconfig wlan0 up
	sudo service network-manager restart
        ;;
    7)  echo -e "Introduce MAC:" 
	read a
	ifconfig wlan1 down
	macchanger -m $a wlan1
	ifconfig wlan1 up
	sudo service network-manager restart
	;;
    8)  echo -e "Introduce MAC:" 
	read a
	ifconfig wlan2 down
	macchanger -m $a wlan2
	ifconfig wlan2 up
	sudo service network-manager restart
        ;;
    9)  echo -e "\e[96m _______eth0________"
	macchanger -s eth0
	echo -e "\e[94m _______wlan0________"
	macchanger -s wlan0
	echo -e "\e[36m _______wlan1________"
	macchanger -s wlan1
	echo -e "\e[34m _______wlan2________"
	macchanger -s wlan2
	;;
esac
#############################################################################################
