#!/bin/bash

#por aitageo

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"



tput cnorm
trap handler  INT

#funcion para terminar la aplicacion con control_c


function handler(){
   echo -e "${redColour}\n\n[*]Saliendo....\n${endColour}"
   exit 0 
   tput civis
}



#instalando herramientas

function instalar_crackmap(){
read -s -p "Ingrese contraseña de sudo: " password
echo -e "\n"

read -p "Tienes instalado pip3 (y) (n)" option
case $option in 
    y)sudo -S  apt-get install python3-pip
		;;
		n)sudo -S  pip3 install crackmapexec
		;;
		esac 
}

function install_fping(){
  echo -e "${blueColour}Instalando....${endColour}"
	sleep 3
	sudo -S apt install fping -y
}

function install_python(){
   sudo -S apt install python3
	 echo -e "${blueColour}Instalando...${endColour}"

}

function install_kerbrute(){
    echo -e "${blueColour}Instalando...${endColour}"
    pip3 install kerbrute

}

function install_usersgenerator(){
     echo -e "${blueColour}Instalando... ${endColour}"
		 pip3 install usersgenerator

}

function install_impacket(){
   echo -e "${blueColour}Instalando.. ${endColour}"
	 sleep 3
	 sudo -S apt install python3-impacket

}

function install_john(){
   echo -e "${blueColour}Instalando.. ${endColour}"
   sleep 3
	 sudo -S apt install john -y
 
}





#Menu principal

while true :
do
echo -e "${yellowColour}Instalador de Herramientas de hacking${endColour}"
echo -e "${yellowColour}_________Menu Principal______________${endColour}"
echo -e "${yellowColour}1: Instalar Crackmapexec ${endColour}"
echo -e "${yellowColour}2: Instaler Fping ${endColour}"
echo -e "${yellowColour}3: Instalar python3 ${endColour}"
echo -e "${yellowColour}4: Instalar Kerbrute ${endColour}"
echo -e "${yellowColour}5: Instalar Usergenerator${endColour}"
echo -e "${yellowColour}6: Instalar impacket${endColour}"
echo -e "${yellowColour}7: Instalar John de Ripper${endColour}"
echo -e "${redColour}8: Salir ${endColour}"
read -p "Ingrese una opcion: " option


case $option in
	1)instalar_crackmap
         ;;
  2)install_fping
	;;
	3)install_python
	;;
  4)install_kerbrute
	;;
	5)install_usersgenerator
	;;
	6)install_impacket
	;;
	7)install_john
	;;
	8)echo -e  "\n${redColour}Saliendo...${endColour}\n"  
	  break			 
esac
done



