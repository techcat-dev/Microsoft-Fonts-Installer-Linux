#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
        echo 'Please run this script as root.' >&2
        exit 1
fi

clear

echo '___________            __    _________         __   '
echo '\__    ___/___   ____ |  |__ \_   ___ \_____ _/  |_ '
echo '  |    |_/ __ \_/ ___\|  |  \/    \  \/\__  \\   __\'
echo '  |    |\  ___/\  \___|   Y  \     \____/ __ \|  |  '
echo '  |____| \___  >\___  >___|  /\______  (____  /__| ' 
echo '             \/     \/     \/        \/     \/    '  


echo ""
echo "TechCat's Microsoft Fonts Installer For Linux"
echo ""
echo "Please choose a downloads mirror:"
echo ""
echo "1. Archive.org Mirror (More Reliable) <--- Default"
echo ""
echo "Your Selection: " 

read VAR

elif [[ $VAR -eq 1 ]]; then
clear
echo "Archive.org Mirror Selected."
sleep 3 
clear
wget https://archive.org/download/microsoft-fonts-linux-ttf/Microsoft-Fonts-Linux-TTF.zip
unzip Microsoft-Fonts-Linux-TTF.zip
cd Microsoft-Fonts-Linux-TTF
./install-fonts-linux.sh
cd ..
rm -rf Microsoft-Fonts-Linux-TTF
rm -rf Microsoft-Fonts-Linux-TTF.zip
sleep 5
clear


else
clear
echo "No Mirror Selected, Archive.org Mirror Selected By Default."
sleep 3 
clear
wget https://archive.org/download/microsoft-fonts-linux-ttf/Microsoft-Fonts-Linux-TTF.zip
unzip Microsoft-Fonts-Linux-TTF.zip
cd Microsoft-Fonts-Linux-TTF
./install-fonts-linux.sh
cd ..
rm -rf Microsoft-Fonts-Linux-TTF
rm -rf Microsoft-Fonts-Linux-TTF.zip
sleep 5
clear

fi
