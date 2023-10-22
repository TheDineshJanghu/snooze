#!/bin/bash
clear

BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
echo""
echo -e "${RED}  ____   _   _   ___    ___  _____ _____  " 
echo " / ___| | \ | | / _ \  / _ \|__  /| ____| "
echo " \___ \ |  \| || | | || | | | / / |  _|   "
echo "  ___) || |\  || |_| || |_| |/ /_ | |___  "
echo " |____/ |_| \_| \___/  \___//____||_____| "
echo -e "${RED}           ~ Tools for Hacking by DINESH JANGHU ${NC}"
echo ""
echo -e "${YELLOW} Github.com/dineshjanghu | Facebook.com/dinesh.janghu2 | Instagram.com/dinesh.janghu ${NC} "
echo ""
echo "-----------------------------------------------------------------------------------"
echo ""
echo -e "${RED}[!] Run As ROOT [!]${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install SNOOZE, CTRL+C to Abort.${NC}"
read INPUT
echo ""

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/snooze"
    BIN_DIR="$PREFIX/usr/bin/"
    pkg install -y git python2
else
    INSTALL_DIR="/usr/share/doc/snooze"
    BIN_DIR="/usr/bin/"
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[!] A Directory snooze Was Found.. Do You Want To Replace It ? [y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://github.com/dineshjanghu/snooze.git "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/snooze.py" '${1+"$@"}' > snooze;
chmod +x snooze;
sudo cp snooze /usr/bin/;
rm snooze;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Successfuly Installed !!! [✔]";
    echo "";
    echo "[✔]''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''[✔]";
    echo "    ✔✔✔ All Is Done!! you can execute tool by typing snooze !! ✔✔✔ [✔]";
    echo "[✔]''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''[✔]";
    echo "";
else
    echo "[✘] Installation Failed !!! [✘]";
    exit
fi
