#Adicionar usuarios 

useradd --help
useradd  nomedousuario
useradd  gabriel -m   cria a pasta home caso preciso
useradd gabrieç -m -c "usuario do sistema"        comenta nome do usuario 

useradd gabriel -m -c  "administrador sys" -c /bin/bash
passwd gabriel   (criar a senha ususario )
useradd gabriel -, -c "sysadm" -s /bin/bash -p $(openssl passwd -crypt teste123)

----------------------------------------------------------------------------------------
permissao de shell
chsh --help
chsh -s /bin/bash  nomedousuariosudo

---------------------------------------------------------------------------------------------
Deletar usuario 
userdel -f nome do usuario
userdell -r  nome do usuario   remove a pasta /home
user dell -r -f gabriel   (remove a pasta gabriel de /home e forca a remocao ususario gabriel )

-------------------------------------------------------------------------------------
usermod muda configuracoes usuario atual

usermod -c "systema"
usermod -c "syadm"
usermod -s /bin/bash




-----------------------------------------------------------------------------------------------
criar ou resetar senha usuario
passwd gabriel
passwd gabriel -e    (faz com que a senha tenha ser traoca proximo login)

----------------------------------------------------------------------------------
mudar usuario logado 
su nomedoususario

ver ususarios 
cat /etc/passwd
-------------------------------------------------------------------------------------------------

sheelscript.sh criar usuarios

nano criarusuario.sh

#!/bin/bash

echo "criando usuarios no sistema"




./criarusuario.sh
------------------------------------------------------------------------------------------------------------
Gereciar grupos
cat /etc/groups
usermod --help


adicionar grupos
groupadd GRP_Adm  cria um grupo com nome GRP_adm

groupdel   deletar grupo

gpaasswd  --help
gpasswd -d gabriel  sudo     remove usuario gabriel do grupo sudo 

usermod -G adm.sudo  gabriel     adiciona o usuario grabriel no grupo adm e sudo

 


RWX   |  RWX  |   RWX
DONO  | GRUPO | OUTROS

DRWXR-XR-X       d direotry dono read wire execute, grupo read execute, outros read execute

drwxr-xr-x   2 root root    4096 Apr  9 13:10 ADM


chown  gabriel:GRp_Adm /adm/    chage owner   mudar dono grupo   ususario dno , nome grupo  ed diretorio

drwxr-xr-x   2 cybers Grp_Adm    4096 Apr  9 13:10 ADM












