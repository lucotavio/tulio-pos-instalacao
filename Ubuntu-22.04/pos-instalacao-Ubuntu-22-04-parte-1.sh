#!/bin/bash


## Criando diretorio Programas onde vao
## ficar os programaas que precisao de
## dwonloads para serem istalados
mkdir /home/$USER/Downloads/Programas/

## Criando diretorio .icons
mkdir /home/$USER/.icons/

## Criando diretorio .themes
mkdir /home/$USER/.themes/

## Criando diretorio Temp
mkdir /home/$USER/Temp/

## Criando diretorio Servidores
mkdir /home/$USER/Servidores/

## Criando diretorio do OBS Studio
mkdir /home/$USER/Vídeos/OBS-Studio/

## Criando diretorio ISO dentro da pasta Instalacao
mkdir -p /home/$USER/Instalacao/ISO/

## Criando diretorio Script dentro da pasta InstalacaoF/usr/-
mkdir /home/$USER/Instalacao/Script/

##Criando diretorio Angular dentro do diretorio Projetos
mkdir -p /home/$USER/Projetos/Angular

##Criando diretorio Angular-Spring dentro do diretorio Projetos
mkdir /home/$USER/Projetos/Angular-Spring

##Criando diretorio Java dentro do diretorio Projetos
mkdir /home/$USER/Projetos/Java

## Entrando na para pasta de programas
cd /home/$USER/Downloads/Programas/

## Instalar software de terceiros
sudo apt install -y ubuntu-restricted-extras

## Criando modelo de arquivo de script de banco de dados
if [ -e /home/$USER/Modelos/TXT.txt ];then
    echo "O arquivo  TXT.txt  ja existe"
else
    touch /home/$USER/Modelos/TXT.txt
fi


## Criando modelo de arquivo shell script
if [ -e /home/$USER/Modelos/shell-script.sh ];then
    echo "O arquivo  shell-script.sh  ja existe"
else
    touch /home/$USER/Modelos/shell-script.sh
    echo "#!/bin/bash" > /home/$USER/Modelos/shell-script.sh
fi


## Criando modelo de arquivo de script de banco de dados
if [ -e /home/$USER/Modelos/script-DB.sql ];then
    echo "O arquivo  script-DB.sql  ja existe"
else
    touch /home/$USER/Modelos/script-DB.sql
fi


## E nescessario instalar os compactadores
## e descompactadores aqui, porque
## logo em seguida alguns
## arquivos vao ser descompactados
sudo apt update -y
sudo apt install -y sharutils
sudo apt install -y p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress


## Instalando comando curl
sudo apt install -y curl


## Download 4K Video Downloader
echo -e "\n\n\n 4K Video Downloader"
if [ -e 4kvideodownloader_4.21.7-1_amd64.deb ];then
    echo "O arquivo  4kvideodownloader_4.21.7-1_amd64.deb  ja existe"
else
    curl -L -o 4kvideodownloader_4.21.7-1_amd64.deb https://www.dropbox.com/s/mywfsbpwu6n71zq/4kvideodownloader_4.21.7-1_amd64.deb?dl=0
fi


## Download Balena Etcher
echo -e "\n\n\n Balena Etcher"
if [ -e balena-etcher-1.10.2.deb ];then
    echo "O arquivo  balena-etcher-1.10.2.deb  ja existe"
else
    curl -L -o balena-etcher-1.10.2.deb https://www.dropbox.com/s/7l2xr0zdv68l80a/balena-etcher-1.10.2.deb?dl=0
fi


## Download Chrome
echo -e "\n\n\n Chrome"
if [ -e chrome-stable_current_amd64.deb ];then
    echo "O arquivo  chrome-stable_current_amd64.deb  ja existe"
else
    curl -L -o chrome-stable_current_amd64.deb https://www.dropbox.com/s/v8hm6t7yt5nn4vm/chrome-stable_current_amd64.deb?dl=0
fi


## Download Compactador
echo -e "\n\n\n Compactador-tar-gz"
echo "O arquivo  compactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
if [ -e compactar-tar-gz ];then
    sudo cp compactar-tar-gz /usr/local/bin/
else
    curl -L -o compactar-tar-gz https://www.dropbox.com/s/f12rnz1806rbpoo/compactar-tar-gz?dl=0
    chmod +x compactar-tar-gz
    sudo cp compactar-tar-gz /usr/local/bin/
fi


## Download DBeaver
echo -e "\n\n\n DBeaver"
if [ -e dbeaver-le_22.3.0_amd64.deb ];then
    echo "O arquivo  dbeaver-le_22.3.0_amd64.deb  ja existe"
else
    curl -L -o dbeaver-le_22.3.0_amd64.deb https://www.dropbox.com/s/mrkvm0699h06age/dbeaver-le_22.3.0_amd64.deb?dl=0
fi


## Download Descompactador
echo -e "\n\n\n Decompactador-tar-gz"
if [ -e descompactar-tar-gz ];then
    echo "O arquivo  descompactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp descompactar-tar-gz /usr/local/bin/
else
    curl -L -o descompactar-tar-gz https://www.dropbox.com/s/vytdyan9ec5e7td/descompactar-tar-gz?dl=0
    chmod +x descompactar-tar-gz
    sudo cp descompactar-tar-gz /usr/local/bin/
fi


## Download Eclipse
echo -e "\n\n\n Eclipse"
if [ -e eclipse-jee-2022-09.deb ];then
    echo "O arquivo  eclipse-jee-2022-09.deb  ja existe"
else
    curl -L -o eclipse-jee-2022-09.deb https://www.dropbox.com/s/qyour3waxk15qa6/eclipse-jee-2022-09.deb?dl=0
fi


## Download GitKraken
echo -e "\n\n\n GitKraken"
if [ -e gitkraken-amd64.deb ];then
    echo "O arquivo  gitkraken-amd64.deb  ja existe"
else
    curl -L -o gitkraken-amd64.deb https://www.dropbox.com/s/yre89j7lrh7w407/gitkraken-amd64.deb?dl=0
fi


## Download Insomnia
echo -e "\n\n\n Insomnia"
if [ -e Insomnia.Core-2022.6.0.deb ];then
    echo "O arquivo  Insomnia.Core-2022.6.0.deb  ja existe"
else
    curl -L -o Insomnia.Core-2022.6.0.deb https://www.dropbox.com/s/4ab5ggtrvksbhui/Insomnia.Core-2022.6.0.deb?dl=0
fi


## Download Intellij Community
echo -e "\n\n\n Intellij Community"
if [ -e intellij-C.deb ];then
    echo "O arquivo  intellij-C.deb  ja existe"
else
    curl -L -o intellij-C.deb https://www.dropbox.com/s/2zwg0i339qrb9br/intellij-C.deb?dl=0
fi


## Download Lombok
echo -e "\n\n\n Lombok"
if [ -e lombok.jar ];then
    echo "O arquivo lombok.jar ja existe"
else
    curl -L -o lombok.jar https://www.dropbox.com/s/sozukz41qxl1tfa/lombok.jar?dl=0
fi


## Download Mysql
if [ -e mysql-apt-config_0.8.24-1_all.deb ];then
    echo "O mysql-apt-config_0.8.24-1_all.deb ja existe"
else
    curl -L -o mysql-apt-config_0.8.24-1_all.deb https://www.dropbox.com/s/frw753s7blilmul/mysql-apt-config_0.8.24-1_all.deb?dl=0
fi


## Download Netbeans
echo -e "\n\n\n Netbeans"
if [ -e netbeans_16-1_all.deb ];then
    echo "O arquivo  netbeans_16-1_all.deb  ja existe"
else
    curl -L -o netbeans_16-1_all.deb https://www.dropbox.com/s/supmbfo91zc59cr/netbeans_16-1_all.deb?dl=0
fi


## Download Only OFfice
echo -e "\n\n\n Only Office"
if [ -e onlyoffice-desktopeditors_amd64.deb ];then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    curl -L -o onlyoffice-desktopeditors_amd64.deb https://www.dropbox.com/s/k22vzxlcp441af9/onlyoffice-desktopeditors_amd64.deb?dl=0
fi


## Download Portugol studio
echo -e "\n\n\n Portugol Studio"
if [ -e portugol-studio-2.7.5-linux-x64.run ];then
    echo "O arquivo  portugol-studio-2.7.5-linux-x64.run  ja existe"
else
    curl -L -o portugol-studio-2.7.5-linux-x64.run https://www.dropbox.com/s/x9e9qgvud4y2wbt/portugol-studio-2.7.5-linux-x64.run?dl=0
fi


## Download Postman
echo -e "\n\n\n Postman"
if [ -e postman.deb ];then
    echo "O arquivo  postman.deb  ja existe"
else
    curl -L -o postman.deb https://www.dropbox.com/s/fqbfvndl4bppiho/postman.deb?dl=0
fi


## Download Spring Tool Suite
echo -e "\n\n\n Spring Tool Suite"
if [ -e sts-4.16.0.RELEASE.deb ];then
    echo "O arquivo  sts-4.16.0.RELEASE.deb  ja existe"
else
    curl -L -o sts-4.16.0.RELEASE.deb https://www.dropbox.com/s/r49cmygzr3rgt9r/sts-4.16.0.RELEASE.deb?dl=0
fi


## Download Visual Studio Code
echo -e "\n\n\n Visual Studio Code"
if [ -e code_1.74.2-1671533413_amd64.deb ];then
    echo "O arquivo  code_1.74.2-1671533413_amd64.deb  ja existe"
else
    curl -L -o code_1.74.2-1671533413_amd64.deb https://www.dropbox.com/s/l38kjj16il3q83o/code_1.74.2-1671533413_amd64.deb?dl=0
fi


## Download VMware player
echo -e "\n\n\n VMware player"
if [ -e VMware-Player-Full-17.0.0-20800274.x86_64.bundle ];then
    echo "O arquivo  code_1.72.2-1665614327_amd64.deb  ja existe"
else
    curl -L -o VMware-Player-Full-17.0.0-20800274.x86_64.bundle https://www.dropbox.com/s/gcisypw88n9iaik/VMware-Player-Full-17.0.0-20800274.x86_64.bundle?dl=0
fi


## Download VMware player icon
echo -e "\n\n\n VMware player icon"
if [ -e vmware.png ];then
    echo "O arquivo  vmware.png  ja existe"
else
    curl -L -o vmware.png https://www.dropbox.com/s/lng1xgmb2e16ctq/vmware.png?dl=0
fi


## Download Waterfox
echo -e "\n\n\n Waterfox"
if [ -e waterfox-G5.1.1.deb ];then
    echo "O arquivo  waterfox-G5.1.1.deb  ja existe"
else
    curl -L -o waterfox-G5.1.1.deb https://www.dropbox.com/s/j3ktca4uimj40wq/waterfox-G5.1.1.deb?dl=0
fi


## Download Tomcat
echo -e "\n\n\n Tomcat"
if [ -d /home/$USER/Servidores/apache-tomcat-9.0.68 ];then
    echo "O diretorio  /home/$USER/Servidores/apache-tomcat-9.0.68  ja existe"
else
    curl -L -o apache-tomcat-9.0.68.tar.gz https://www.dropbox.com/s/nsn2et4pg73ie5h/apache-tomcat-9.0.68.tar.gz?dl=0

    descompactar-tar-gz apache-tomcat-9.0.68.tar.gz
    cp -r apache-tomcat-9.0.68 /home/$USER/Servidores/
fi


## Download Wildfly
echo -e "\n\n\n Wildfly"
if [ -d /home/$USER/Servidores/wildfly-26.1.2.Final ];then
    echo "O diretorio  /home/$USER/Servidores/wildfly-26.1.2.Final  ja existe"
else
    curl -L -o wildfly-26.1.2.Final.tar.gz https://www.dropbox.com/s/u8211vat0fcetg8/wildfly-26.1.2.Final.tar.gz?dl=0

    descompactar-tar-gz wildfly-26.1.2.Final.tar.gz
    cp -r wildfly-26.1.2.Final /home/$USER/Servidores/
fi


## Download Netbeans plugins
echo -e "\n\n\n Netbeans plugins"
if [ -d /home/$USER/Instalacao/netbeans-plugins ];then
    echo "O diretorio  /home/$USER/Instalacao/netbeans-plugins  ja existe"
else
    curl -L -o netbeans-plugins.tar.gz https://www.dropbox.com/s/gc1h7pum5oa776i/netbeans-plugins.tar.gz?dl=0

    descompactar-tar-gz netbeans-plugins.tar.gz
    cp -r netbeans-plugins /home/$USER/Instalacao/
fi


#Download Drivers JDBC
echo -e "\n\n\n Drivers JDBC"
if [ -d /home/$USER/Instalacao/drivers-JDBC ];then
    echo "O diretorio  /home/$USER/Instalacao/drivers-JDBC  ja existe"
else
    curl -L -o drivers-JDBC.tar.gz https://www.dropbox.com/s/h6htbjk1ryrhgmm/drivers-JDBC.tar.gz?dl=0

    descompactar-tar-gz drivers-JDBC.tar.gz
    cp -r drivers-JDBC /home/$USER/Instalacao/
fi


## Download Wallpapers
echo -e "\n\n\n Wallpapers"
if [ -d /home/$USER/Imagens/wallpaper ];then
    echo "O diretorio  /home/$USER/Imagens/wallpaper  ja existe"
else
    curl -L -o wallpaper.tar.gz https://www.dropbox.com/s/x2y60fdwjojc97f/wallpaper.tar.gz?dl=0

    descompactar-tar-gz wallpaper.tar.gz
    cp -r wallpaper /home/$USER/Imagens/
fi


## Download tema WhiteSur Dark solid
echo -e "\n\n\n WhiteSur Dark solid"
if [ -e /home/luciano/.themes/WhiteSur-dark-solid ];then
    echo "O diretorio  /home/luciano/.themes/WhiteSur-dark-solid  ja existe"
else
    curl -L -o WhiteSur-dark-solid.tar.gz https://www.dropbox.com/s/5har6w13jeb5834/WhiteSur-dark-solid.tar.gz?dl=0

    descompactar-tar-gz WhiteSur-dark-solid.tar.gz
    cp -r WhiteSur-dark-solid /home/$USER/.themes/
fi


## Download icones Big Sur
echo -e "\n\n\n Big Sur Icons"
if [ -e /home/luciano/.icons/BigSur ];then
    echo "O diretorio  /home/luciano/.icons/BigSur  ja existe"
else
    curl -L -o BigSur.tar.gz https://www.dropbox.com/s/vzbqwtz48r5u7lx/BigSur.tar.gz?dl=0

    descompactar-tar-gz BigSur.tar.gz
    cp -r BigSur /home/$USER/.icons/
fi


## Download icones Big Sur Dark
echo -e "\n\n\n Big Sur Dark Icons"
if [ -e /home/luciano/.icons/BigSur-dark ];then
    echo "O diretorio  /home/luciano/.icons/BigSur-dark  ja existe"
else
    curl -L -o BigSur-dark.tar.gz https://www.dropbox.com/s/1dw2bq6h3ja2uz1/BigSur-dark.tar.gz?dl=0

    descompactar-tar-gz BigSur-dark.tar.gz
    cp -r BigSur-dark /home/$USER/.icons/
fi


## Download MacMojave cursores
echo -e "\n\n\n MacMojave cursores"
if [ -e /home/luciano/.icons/McMojave-cursors ];then
    echo "O diretorio  /home/luciano/.icons/McMojave-cursors  ja existe"
else
    curl -L -o McMojave-cursors.tar.gz https://www.dropbox.com/s/2pa43hb00yqt0io/McMojave-cursors.tar.gz?dl=0

    descompactar-tar-gz McMojave-cursors.tar.gz
    cp -r McMojave-cursors /home/$USER/.icons/
fi




echo -e "\n\n\n************************************************** INSTALACAO DO JDK-17 **************************************************************"

## Download JDK-17
echo -e "\n\n\n JDK"
if [ -d jdk-17 ];then
    sudo cp -r jdk-17 /opt/
else
    curl -L -o openjdk-17_35_linux-x64_bin.tar.gz https://www.dropbox.com/s/ch9h9fni6co9lkn/openjdk-17_35_linux-x64_bin.tar.gz?dl=0

    descompactar-tar-gz openjdk-17_35_linux-x64_bin.tar.gz
    sudo cp -r jdk-17 /opt/
    rm openjdk-17_35_linux-x64_bin.tar.gz
fi


## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --install /usr/bin/java java /opt/jdk-17/bin/java 2
sudo update-alternatives --config java


## Configurando variaveis de ambiente do Java
if grep -qi "export JAVA_HOME=/opt/jdk-17" /home/$USER/.bashrc; then
    echo "Variaveis de ambiente Java ja configurados"
else
    echo "export JAVA_HOME=/opt/jdk-17" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /home/$USER/.bashrc
fi

## Usando o comando source para executar o arquivo .bashrc
source /home/luciano/.bashrc

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n**********************************************INSTALANDO  O  MAVEN *******************************************************************"

## Download do Maven
echo -e "\n\n\n Maven"
if [ -d apache-maven-3.8.6 ];then
    sudo cp -r apache-maven-3.8.6 /opt/
else
    curl -L -o apache-maven-3.8.6-bin.tar.gz https://www.dropbox.com/s/vej28bg0b1uhxp7/apache-maven-3.8.6-bin.tar.gz?dl=0

    descompactar-tar-gz apache-maven-3.8.6-bin.tar.gz
    sudo cp -r apache-maven-3.8.6 /opt/
    rm apache-maven-3.8.6-bin.tar.gz
fi


## Configurando variaveis de ambiente do Maven
if grep -qi "export MAVEN_HOME=/opt/apache-maven-3.8.6" /home/$USER/.bashrc ;then
    echo "Variaveis de Ambiente do Maven configurados"
else
    echo "export MAVEN_HOME=/opt/apache-maven-3.8.6" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> /home/$USER/.bashrc
fi


## Usando o comando source para executar o arquivo .bashrc
source /home/luciano/.bashrc

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT ******************************************************"

## Atualizando PPA
sudo apt update -y

## Instalando fonte firecode
sudo apt install -y fonts-firacode

## Instalando Hardinfo
sudo apt install -y hardinfo

## Instalando fontes da Microsoft
sudo apt install -y ttf-mscorefonts-installer
sudo fc-cache -f -v

## Instalando VirtualBox
sudo apt install -y virtualbox

## Instalando gcc g++
sudo apt install -y gcc g++ make

## Instalando o Transmission
sudo apt install -y transmission

## Intalando Gnome tweaks tools
sudo apt install -y gnome-tweaks

## Instalando net-tools
sudo apt install -y net-tools

## Instalando libglib2.0-dev
sudo apt install -y libglib2.0-dev

## Instalando libgconf-2-4
sudo apt install -y libgconf-2-4

## Instalando VLC
sudo apt install -y vlc

## Instalando Browser Epiphany
sudo apt install -y epiphany-browser

## Instalando Gnome extensions
sudo apt install -y gnome-shell-extensions
sudo apt install -y chrome-gnome-shell

## Instalando o gerenciador de extensões
sudo apt install -y gnome-shell-extension-manager

## Instalando o Dconf-editor
sudo apt install -y dconf-editor

## Instalando Gparted
sudo apt install -y gparted

echo  "**********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT *******************************************************************"

## Instalando o Git
sudo apt install -y git
git config --global user.name "Tulio"
git config --global user.email "tulio@gmail.com"
## git config --global credential.helper store


echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MELD ******************************************************************"

## Instalando e configurando Meld
sudo apt install -y meld
git config --global diff.tool meld
git config --global difftool.meld.path "/usr/bin/meld"
git config --global difftool.prompt false
git config --global merge.tool meld
git config --global mergetool.meld.path "/usr/bin/meld"
git config --global mergetool.prompt false

echo "***********************************************************************************************************************************************"




echo -e "\n\n***************************************************** INSTALANDO  O  MYSQL *************************************************************"

chmod +x mysql-apt-config_0.8.24-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.24-1_all.deb
sudo apt --fix-broken install -y

## Atualizando a maneira de atualizar as keys dos repositorio sao salvas
cd /etc/apt
sudo cp trusted.gpg trusted.gpg.d

sudo apt update -y
sudo apt install -y mysql-server
sudo apt install -y mysql-workbench-community

echo -e "\n\n****************************************************************************************************************************************"




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




echo "\n\n\n******************************INSTALANDO  SUPORTE  A FLATPAK*****************************************************************************"

sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "******************************************REINICIAR  O  COMPUTADOR*****************************************************************************"
