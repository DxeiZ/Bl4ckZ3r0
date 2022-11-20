#!/bin/bash

#/# My use colors #/#
	red='\e[0;31m'
	bred='\e[1;31m'
	green='\e[0;32m'
	bgreen='\e[1;32m'
	bmag='\e[1;35m'
	white='\e[0;37m'
	bwhite='\e[1;37m'
	byellow='\e[1;33m'
	yellow='\e[0;33m'
	bgred='\e[1;41m'
	tp='\e[0m'
	blink='\e[5m'
	smso='\e[3m'
	dim='\e[2m'

#/# Detecting Ctrl+C #/#
trap ctrl_c INT
ctrl_c() {
	echo -e "\n"
	echo -e $bgreen"["$blink$byellow"⋄$tp$bgreen] Bl4ckZ3r0 thanks for choosing her/him."
	exit 0
}


#/# Amazing HEADER :) #/#
header() {
	clear
	echo
	echo -e " $bred ▄▄▄▄    ██▓    ▄▄▄       ▄████▄   ██ ▄█▀▒███████▒▓█████  ██▀███   ▒█████  "
	echo -e " $bred▓█████▄ ▓██▒   ▒████▄    ▒██▀ ▀█   ██▄█▒ ▒ ▒ ▒ ▄▀░▓█   ▀ ▓██ ▒ ██▒▒██▒  ██▒"
	echo -e " $bred▒██▒ ▄██▒██░   ▒██  ▀█▄  ▒▓█    ▄ ▓███▄░ ░ ▒ ▄▀▒░ ▒███   ▓██ ░▄█ ▒▒██░  ██▒"
	echo -e " $bred▒██░█▀  ▒██░   ░██▄▄▄▄██ ▒▓▓▄ ▄██▒▓██ █▄   ▄▀▒   ░▒▓█  ▄ ▒██▀▀█▄  ▒██   ██░"
	echo -e " $bred░▓█  ▀█▓░██████▒▓█   ▓██▒▒ ▓███▀ ░▒██▒ █▄▒███████▒░▒████▒░██▓ ▒██▒░ ████▓▒░"
	echo -e " $bred░▒▓███▀▒░ ▒░▓  ░▒▒   ▓▒█░░ ░▒ ▒  ░▒ ▒▒ ▓▒░▒▒ ▓░▒░▒░░ ▒░ ░░ ▒▓ ░▒▓░░ ▒░▒░▒░ "
	echo -e " $bred▒░▒   ░ ░ ░ ▒  ░ ▒   ▒▒ ░  ░  ▒   ░ ░▒ ▒░░░▒ ▒ ░ ▒ ░ ░  ░  ░▒ ░ ▒░  ░ ▒ ▒░ "
	echo -e " $bred ░    ░   ░ ░    ░   ▒   ░        ░ ░░ ░ ░ ░ ░ ░ ░   ░     ░░   ░ ░ ░ ░ ▒  "
	echo -e " $bred ░          ░  ░     ░  ░░ ░      ░  ░     ░ ░       ░  ░   ░         ░ ░  "
	echo -e " $bred      ░                  ░               ░                                 "
	echo -e $tp
	echo -e $blink$bgreen" ┌------------------------------------------------------------------------┐"
	echo -e " │$tp$byellow   .---------.                                                          $blink$bgreen│"
	echo -e " │$tp$byellow   |.-------.|  $bmag Developer: Eratonos                                    $blink$bgreen│"
	echo -e " │$tp$byellow   ||>run#  ||  $bmag Github: https://github.com/Eratonos                    $blink$bgreen│"
	echo -e " │$tp$byellow   ||       ||  $bmag Version: 1.0                                           $blink$bgreen│"
	echo -e " │$tp$byellow   |\"-------'|                                                         $blink$bgreen │"
	echo -e " │$tp$byellow .-^---------^-.                                                       $blink$bgreen │"
	echo -e " │$tp$byellow | ---~   Bl4ck| $dim$yellow Good Hacking :)$tp                                      $blink$bgreen │"
	echo -e " │$tp$byellow \"-------------'                                                        $blink$bgreen│" 
	echo -e $blink$bgreen" └------------------------------------------------------------------------┘"
	echo -e $tp
}

#/# Main Menu #/#
main() {
	echo -ne $bred" 1 ⋄$tp$bred SpamW  $green- Whatsapp Spam\t\t"
	echo -e  $bred" 4 ⋄$tp$bred RequiredZ3r0 $green- Required Linux"
	echo -ne $bred" 2 ⋄$tp$bred IPScan $green- IPv4 Scanner\t\t"
	echo -e  $bred" 5 ⋄$tp$bred CamHackers   $green- Web Camera IPs"
	echo -ne $bred" 3 ⋄$tp$bred Cupp   $green- Generator Wordlist\t"
	echo -e  $bred" 6 ⋄$tp$bred InstaSpamV4  $green- Instagram Closed"
	echo -ne "\n\t\t\t\t\t "
	echo -e  $bgred$bwhite"⋄ Exit                             $tp"
	echo
	echo -e $bgreen"┌("$bred"bl4ckz3r0@root$bgreen)"
	echo -ne $bred"└["$blink"⋄$tp$bred] →$tp "; read options
}

#/# Check your internet #/#
checkInternet() {
	ping -c 1 google.com > /dev/null
	if [[ "$?" != 0 ]]
	then
		echo -e "⋄ Internet checking...$bred ERROR$tp \nClosing"
 		exit 1
 	else
		echo -e "⋄ Internet checking...$bgreen FOUND"
		sleep 0.5
	fi
}

header
checkInternet

#/# Check Kali Linux #/#
checkkali=$(uname -r)
if [[ $checkkali = *kali* ]]; then
	if [[ -d kalisources ]]; then
		echo -e $tp"⋄ Kali Linux checking...$byellow WARNING"
	else
		echo -e $tp"⋄ Kali Linux checking...$bgreen FOUND"
		sleep 0.5
	fi
fi

#/# Check Ruby #/#
checkruby=$(which ruby)
if [[ $checkruby = "" ]]; then
	echo -e $tp"⋄ Ruby checking...$bred NOT FOUND"
	echo -e $tp"⋄ Ruby Downloads..."
	apt install ruby &> /dev/null
	echo -e $tp$bgreen"⋄ SUCCESSFUL"
	sleep 0.5
else
	echo -e $tp"⋄ Ruby checking...$bgreen FOUND"
	sleep 0.5
fi

#/# Check Python #/#
checkpython=$(which python)
if [[ $checkpython = "" ]]; then
	echo -e $tp"⋄ Python checking...$bred NOT FOUND"
	echo -e $tp"⋄ Python Downloads..."
	apt install -y python python-pip &> /dev/null
	echo -e $tp$bgreen"⋄ SUCCESSFUL"
	sleep 0.5
else
	echo -e $tp"⋄ Python checking...$bgreen FOUND"
	sleep 0.5
fi

#/# Check Python2 #/#
checkpython2=$(which python2)
if [[ $checkpython2 = "" ]]; then
	echo -e $tp"⋄ Python2 checking...$bred NOT FOUND"
	echo -e $tp"⋄ Python2 Downloads..."
	apt install -y python2 python2-pip &> /dev/null
	echo -e $tp$bgreen"⋄ SUCCESSFUL"
	sleep 0.5
else
	echo -e $tp"⋄ Python2 checking...$bgreen FOUND"
	sleep 0.5
fi

#/# Check Python3 #/#
checkpython3=$(which python3)
if [[ $checkpython3 = "" ]]; then
	echo -e $tp"⋄ Python3 checking...$bred NOT FOUND"
	echo -e $tp"⋄ Python3 Downloads..."
	apt install -y python3 python3-pip &> /dev/null
	echo -e $tp$bgreen"⋄ SUCCESSFUL"
	sleep 0.5
else
	echo -e $tp"⋄ Python3 checking...$bgreen FOUND"
	sleep 0.5
fi

clear
header
main

#/# Select your option #/#
case "$options" in
	1)
		if [[ -d SpamWa ]]; then
			echo -e $bgreen"└["$blink$byellow"⋄$tp$bgreen] Opening..."
			sleep 3
			menu
		else
			clear
			header
			echo -ne $tp"SpamWa Downloading..."
			git clone https://github.com/krypton-byte/SpamWa > /dev/null 2>&1
			echo -e $bgreen" SUCCESSFUL"
			cd SpamWa
			echo -ne $tp"Installing Additional Components..."
			{
				chmod +x spam.py
				pip3 install requests
  			} &> /dev/null
  			cd ..
  			echo -e $bgreen" SUCCESSFUL"
  			echo -e $bgreen"└["$blink$byellow"⋄$tp$bgreen] Opening..."
  			sleep 3
 		fi
 		clear
 		cd SpamWa
 		sudo python3 spam.py
 		cd ..
 	;;
	2)
		if [[ -d IPScan ]]; then
			echo -e $bgreen"└["$blink$byellow"⋄$tp$bgreen] Opening..."
			sleep 3
			menu
		else
			clear
			header
			echo -ne $tp"IPScan Downloading..."
			git clone https://github.com/Eratonos/IPScan > /dev/null 2>&1
			echo -e $bgreen" SUCCESSFUL"
			cd IPScan
			echo -ne $tp"Installing Additional Components..."
			{
				chmod +x main.py
				pip3 install -r requirements.txt
			} &> /dev/null
  			cd ..
  			echo -e $bgreen" SUCCESSFUL"
  			echo -e $bgreen"└["$blink$byellow"⋄$tp$bgreen] Opening..."
  			sleep 3
 		fi
 		clear
 		cd IPScan
 		sudo python3 main.py
 		cd ..
 	;;
 	3)
 		if [[ -d Cupp ]]; then
  			echo -e $bgreen"└["$blink$byellow"⋄$tp$bgreen] Opening..."
  			sleep 3
  			menu
 		else
  			clear
  			header
  			echo -ne $tp"IPScan Downloading..."
  			git clone https://github.com/Mebus/cupp > /dev/null 2>&1
  			echo -e $bgreen" SUCCESSFUL"
  			cd cupp
  			echo -ne $tp"Installing Additional Components..."
  			{
  				chmod +x cup.py
  				apt-get install -y python3
  			} &> /dev/null
  			cd ..
  			echo -e $bgreen" SUCCESSFUL"
  			echo -e $bgreen"└["$blink$byellow"⋄$tp$bgreen] Opening..."
  			sleep 3
 		fi
 		clear
 		cd cupp
 		sudo python3 cup.py
 		cd ..
 	;;
 	4)
 		clear
 		header
 		echo -ne $tp"RequiredZ3r0 Runnig..."
 		[ $UID != 0 ] && { echo -e $bred"Run as root! sudo bash $0"; exit 1; }
 		apt update
 		apt install -y python3 python3-pip git php nmap tor default-jdk curl openssh openssl wget unzip vi vim nano
 		echo -e $bgreen" SUCCESSFUL"
 		echo -ne $tp"Installing Additional Components..."
 		apt upgrade -y && apt autoremove -y
 		echo -e $bgreen" SUCCESSFUL"
 		sleep 3
 		clear
 		header
 		main
 	;;
	5)
 		if [[ -d Cam-Hackers ]]; then
  			echo -e $bgreen"└["$blink$byellow"⋄$tp$bgreen] Opening..."
  			sleep 3
  			menu
 		else
  			clear
  			header
  			echo -ne $tp"Cam-Hackers Downloading..."
  			git clone https://github.com/AngelSecurityTeam/Cam-Hackers > /dev/null 2>&1
  			echo -e $bgreen" SUCCESSFUL"
  			cd Cam-Hackers
  			echo -ne $tp"Installing Additional Components..."
  			{
  				chmod +x cup.py
  				apt-get install -y python3-pip
  				pip3 install requests
  			} &> /dev/null
  			cd ..
  			echo -e $bgreen" SUCCESSFUL"
  			echo -e $bgreen"└["$blink$byellow"⋄$tp$bgreen] Opening..."
  			sleep 3
 		fi
 		clear
 		cd Cam-Hackers
 		sudo python3 cam-hackers.py
 		cd ..
 	;;
 	6)
 		if [[ -d instaspamv4 ]]; then
 	 		echo -e $bgreen"└["$blink$byellow"⋄$tp$bgreen] Opening..."
  			sleep 3
 	 		menu
 		else
  			clear
			header
			echo -ne $tp"Cam-Hackers Downloading..."
			git clone https://github.com/AngelSecurityTeam/Cam-Hackers > /dev/null 2>&1
			echo -e $bgreen" SUCCESSFUL"
			cd instaspamv4
			echo -ne $tp"Installing Additional Components..."
			{
				chmod +x instaspamv4.py
				pip3 install proxybroker
			} &> /dev/null
			cd ..
			echo -e $bgreen" SUCCESSFUL"
			echo -e $bgreen"└["$blink$byellow"⋄$tp$bgreen] Opening..."
			sleep 3
	fi
 	clear
 	cd instaspamv4
 	sudo python3 instaspamv4.py
 	cd ..
 	;;
	0)
		clear
 		header
		echo -e $bgreen"["$blink$byellow"⋄$tp$bgreen] Bl4ckZ3r0 thanks for choosing her/him."
		exit 0
 	;;
	*)
		echo -e $bred"An undefined parameter"
 		sleep 0.5
 		clear
 		header
 		main
 	;;
esac
