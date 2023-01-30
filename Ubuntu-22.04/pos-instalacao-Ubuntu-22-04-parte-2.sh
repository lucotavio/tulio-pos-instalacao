#!/bin/bash


echo -e "\n\n\n************************************************** INSTALANDO  PORTUGOL  STUDIO ******************************************************"

## Voltando para pasta de programas
cd /home/$USER/Downloads/Programas/

chmod +x portugol-studio-2.7.5-linux-x64.run
sudo ./portugol-studio-2.7.5-linux-x64.run

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n**************************************************INSTALANDO  VMWARE  PLAYER *********************************************************"

chmod +x VMware-Player-Full-17.0.0-20800274.x86_64.bundle

## Dependencias do VMware
sudo apt update -y
sudo apt install -y build-essential
sudo apt install -y manpages-dev

## Instalando VMware
sudo ./VMware-Player-Full-17.0.0-20800274.x86_64.bundle

## Alterando icone  do VMware
sudo mkdir /opt/vmware-icon/
sudo cp vmware.png /opt/vmware-icon/
sudo sed -i 's\vmware-player\/opt/vmware-icon/vmware.png\g' /usr/share/applications/vmware-player.desktop

## Abrindo o VMware player via terminal
vmplayer

## Consertando o problema de 3d não suportado
if grep -qi 'mks.gl.allowBlacklistedDrivers = "TRUE"' /home/$USER/.vmware/preferences; then
    echo "VMWare ja configurado"
else
    echo 'mks.gl.allowBlacklistedDrivers = "TRUE"' >> /home/$USER/.vmware/preferences
fi

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n********************************* INSTALANDO  DRIVER  DE  VIDEO  E  INSTALANDO  LIVEPATCH*********************************************"

sudo apt update -y
sudo ubuntu-drivers devices
sudo apt install -y ubuntu-advantage-tools
sudo apt install -y nvidia-driver-390
sudo ua attach C12Jp442FKeioyspXdSyrbG9aHn9hw


echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  FLATPACK *****************************************************"


flatpak install flathub io.atom.Atom -y
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y
flatpak install flathub com.getpostman.Postman -y
flatpak install flathub com.spotify.Client -y


echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  SNAP *********************************************************"

## Instalando Visualg
sudo snap install wine-platform-runtime
sudo snap install wine-platform-3-stable
sudo sudo snap install visualg
sudo snap connect visualg:wine-runtime wine-platform-runtime
sudo snap connect visualg:wine-3-stable wine-platform-3-stable
sudo snap refresh visualg

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ARQUIVOS  .DEB ********************************************************"

## Voltando para pasta de programas
cd /home/$USER/Downloads/Programas/


sudo apt update -y


## Tornando todos os arquivos .jar
## em arquivos executaveis
chmod +x lombok.jar


## Tornando todos os arquivos .deb
## em arquivos executavies
chmod +x *.deb


## 4K Video Downloader
sudo dpkg -i 4kvideodownloader_4.21.7-1_amd64.deb
sudo apt --fix-broken install -y


## Balena Etcher
sudo dpkg -i balena-etcher-1.10.2.deb
sudo apt --fix-broken install -y


## Chrome
sudo dpkg -i chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y


## Dbeaver
sudo dpkg -i dbeaver-le_22.3.0_amd64.deb
sudo apt --fix-broken install -y


## Eclipse
sudo dpkg -i eclipse-jee-2022-09.deb
sudo apt --fix-broken install -y


## GitKraken
sudo dpkg -i gitkraken-amd64.deb
sudo apt --fix-broken install -y


## Insomnia
sudo dpkg -i Insomnia.Core-2022.6.0.deb
sudo apt --fix-broken install -y


## Netbeans
sudo dpkg -i netbeans_16-1_all.deb
sudo apt --fix-broken install -y


## Only Office
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt --fix-broken install -y


## Spring tool Suite
sudo dpkg -i --force-overwrite sts-4.16.0.RELEASE.deb
sudo apt --fix-broken install -y


## Visual Studio Code
sudo dpkg -i code_1.74.2-1671533413_amd64.deb
sudo apt --fix-broken install -y


## Waterfox
sudo dpkg -i waterfox-G5.1.1.deb
sudo apt --fix-broken install -y



echo -e "\n\n\n *********************************************INSTALANDO  LOMBOK  ECLIPSE ************************************************************"

sudo java -jar lombok.jar

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n *************************************  INSTALANDO  LOMBOK  SPRING TOOLS  SUITE ******************************************************"

sudo java -jar lombok.jar

echo "***********************************************************************************************************************************************"




## Atualizando a maneira de atualizar as keys dos repositorio sao salvas
cd /etc/apt
sudo cp trusted.gpg trusted.gpg.d


## Deletando dependencias que nao estao sendo utilizadas
sudo apt autoremove
