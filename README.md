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
cat /etc/groups





