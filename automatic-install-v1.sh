#!/bin/bash
# Bash Menu Script Example

PS3='Please enter your choice: '
options=("Ativar suporte 32-bit 1" "GNS3 2" "QEMU 3" "XTERM 4" "Winbox 5" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "Ativando suporte 32-bit"
            sleep 3
            sudo dpkg --add-architecture i386 -y
            ;;
        "Option 2")
            echo "Instalando GNS3 (Ubuntu/Debiam 64-bit)"
            sleep 3
            #Adiciona o repositorio
            sudo add-apt-repository ppa:gns3/ppa -y
            #Atualizar pacotes
            sudo apt update
            #Instala o GNS3
            sudo apt install gns3-gui gns3-server -y
            ;;
        "Option 3")
            echo "Instalando QEMU"
            sleep 3
            sudo apt install qemu
            ;;
        "Option 4")
            echo "Instalando XTERM"
            sleep 3
            sudo apt install xterm
            ;;
        "Option 5")
            echo "Baixando o Winbox"
            sleep 3
            wget -c https://mt.lv/winbox64
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
