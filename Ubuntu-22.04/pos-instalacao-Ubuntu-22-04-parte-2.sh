#!/bin/bash




echo -e "\n\n\n************************************************** INSTALANDO  PORTUGOL  STUDIO ******************************************************"

## Voltando para pasta de programas
cd /home/$USER/Downloads/Programas/

chmod +x portugol-studio-2.7.5-linux-x64.run
sudo ./portugol-studio-2.7.5-linux-x64.run

echo -e "\n\n\n*************************************FIM  DA  INSTALAÇÃO  DO MYSQL  PORTUGOL  STUDIO *************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MARIADB  OU  MYSQL ****************************************************"

cd /home/$USER/Downloads/Programas/
while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - MariaDB"
    echo "2 - MySql"

    read opcao

    if [ $opcao -eq 1 ];then
        sudo apt install -y software-properties-common dirmngr apt-transport-https
        sudo apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
        sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] https://mirror.ufro.cl/mariadb/repo/10.5/ubuntu 2 main'
        sudo apt update -y
        sudo apt install -y mariadb-server
        sudo systemctl start mariadb
        sudo systemctl enable mariadb
        sudo mysql_secure_installation

        ## Dando ao usuario root todas as permissoes no SGBD MariaDB
        sudo mysql -u root "-p789789" -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@localhost IDENTIFIED BY '789789';"

        ## Criando ususario luciano
        sudo mysql -u root "-p789789" -e "CREATE USER 'luciano'@'localhost' IDENTIFIED BY '789789';"

        ## Dando ao usuario luciano todas as permissoes no SGBD MariaDB
        sudo mysql -u root "-p789789" -e "GRANT ALL PRIVILEGES ON *.* TO 'luciano'@localhost IDENTIFIED BY '789789';"

        echo -e "\n\n******************** FIM  DA  INSTALACAO  DO  MARIADB ********************"
        break
    elif [ $opcao -eq 2 ];then
        echo -e "\n\n******************** INSTALANDO  O  MYSQL ********************"

        echo -e "\n\n\Mysql - 36 KB"
        if [ -e mysql-apt-config_0.8.22-1_all.deb ];then
            echo "O mysql-apt-config_0.8.22-1_all.deb ja existe"
        else
            curl -L -o mysql-apt-config_0.8.24-1_all.deb https://www.dropbox.com/s/frw753s7blilmul/mysql-apt-config_0.8.24-1_all.deb?dl=0
        fi

        chmod +x mysql-apt-config_0.8.24-1_all.deb
        sudo dpkg -i mysql-apt-config_0.8.24-1_all.deb
        sudo apt --fix-broken install -y

        ## Atualizando a maneira de atualizar as keys dos repositorio sao salvas
        cd /etc/apt
        sudo cp trusted.gpg trusted.gpg.d

        sudo apt update -y
        sudo apt install -y mysql-server
        sudo apt install -y mysql-workbench-community

        echo -e "\n\n******************** FIM  DA  INSTALACAO  DO   MYSQL********************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done

echo -e "\n\n\n*************************************FIM  DA  INSTALAÇÃO  DO MYSQL  OU  MARIADB ******************************************************"




echo -e "\n\n\n********************************* INSTALANDO  DRIVER  DE  VIDEO  E  INSTALANDO  LIVEPATCH*********************************************"


while true
do
    echo -e "\n\nDigite opção 1 ou 2 ou 3"
    echo "1 - DESKTOP"
    echo "2 - NOTEBOOK LUCIANO"
    echo "3 - NOTEBOOK KARINE"

    read opcao

    sudo apt update -y
    sudo ubuntu-drivers devices
    sudo apt install -y ubuntu-advantage-tools

    if [ $opcao -eq 1 ];then
        echo -e "\n\n******************** DESKTOP ********************************************"

        sudo apt install -y nvidia-driver-390
        sudo ua attach C1NN7PA4J2HtxnsvSiTUPEs5bUU7Y

        echo -e "\n\n*************************************************************************"
        break
    elif [ $opcao -eq 2 ];then
        echo -e "\n\n******************** NOTEBOOK LUCIANO ********************************************"

        sudo apt install -y nvidia-driver-525
        sudo ua attach C1x3zxz1GFawrD8EY4oT7RsxsEfH1

        echo -e "\n\n**************************************************************************"
        break
    elif [ $opcao -eq 3 ];then
        echo -e "\n\n******************** NOTEBOOK KARINE ********************************************"

        sudo ua attach C12wzTeCz8jzTFmRaZHZnyw1zr8yjr

        echo -e "\n\n**************************************************************************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done

echo "***********************************************************************************************************************************************"




echo "***********************************************************************************************************************************************"



while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - Intellij Community"
    echo "2 - Intellij Ultimate"

    read opcao

    if [ $opcao -eq 1 ];then
        echo -e "\n\n********************INSTALANDO O  INTELLIJ COMMUNITY ********************"

        flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y

        echo -e "\n\n*************************************************************************"
        break
    elif [ $opcao -eq 2 ];then
        echo -e "\n\n******************** INSTALANDO  O  INTELLIJ ULTIMATE ********************"

        flatpak install flathub com.jetbrains.IntelliJ-IDEA-Ultimate -y

        echo -e "\n\n**************************************************************************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  FLATPACK *****************************************************"

flatpak install flathub com.google.AndroidStudio -y
flatpak install flathub io.atom.Atom -y
flatpak install flathub fr.handbrake.ghb -y
flatpak install flathub org.kde.kdenlive -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub com.getpostman.Postman -y
flatpak install flathub org.kde.umbrello -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  SNAP *********************************************************"

## Instalando Visualg
sudo snap install wine-platform-runtime
sudo snap install wine-platform-3-stable
sudo sudo snap install visualg
sudo snap connect visualg:wine-runtime wine-platform-runtime
sudo snap connect visualg:wine-3-stable wine-platform-3-stable
sudo snap refresh visualg

## Instalando Notepad ++
sudo snap install notepad-plus-plus

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  POSTGRES **************************************************************"

sudo chmod 755 /home/$USER
## mkdir -p /home/$USER/PGDATA
## chown postgres:postgres -R /home/$USER/PGDATA

sudo apt update -y
sudo apt-get install -y postgresql postgresql-contrib

## Alterando a senha do usuario postgres no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "ALTER USER postgres PASSWORD '789789';"

## Criando usuario luciano no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "CREATE USER luciano WITH ENCRYPTED PASSWORD '789789';"

## Alterando permissoes do usuario luciano
## para ele se tornar um super usuario
## no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "ALTER USER luciano WITH SUPERUSER"

echo "***********************************************************************************************************************************************"




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

echo -e "\n\n\n**************************************************FIM  DA  INSTALAÇÃO  DO  VMWARE  PLAYER ********************************************"




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


## Dropbox
sudo dpkg -i dropbox_2020.03.04_amd64.deb
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


## Visual Studio Code
sudo dpkg -i code_1.74.2-1671533413_amd64.deb
sudo apt --fix-broken install -y


## Waterfox
sudo dpkg -i waterfox-G5.1.1.deb
sudo apt --fix-broken install -y


## Eclipse
echo -e "\n\n\n *********************************************INSTALANDO  LOMBOK  ECLIPSE ************************************************************"

sudo java -jar lombok.jar

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n****************************DELETANDO  ARQUIVOS  DA  PASTA  MODELO  CRIADOS  AUTOMATICAMENTE *****************************************"

sudo rm /home/$USER/Modelos/DOC\ Document.docx
sudo rm /home/$USER/Modelos/DOCX\ Document.docx
sudo rm /home/$USER/Modelos/PPT\ Presentation.ppt
sudo rm /home/$USER/Modelos/PPTX\ Presentation.pptx
sudo rm /home/$USER/Modelos/XLS\ Worksheet.xls
sudo rm /home/$USER/Modelos/XLSX\ Worksheet.xlsx

echo -e "\n\n\n**************************************************************************************************************************************"



## Atualizando a maneira de atualizar as keys dos repositorio sao salvas
cd /etc/apt
sudo cp trusted.gpg trusted.gpg.d


## Deletando dependencias que nao estao sendo utilizadas
sudo apt autoremove
