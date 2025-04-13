# Adicionar usuarios

useradd --help useradd nomedousuario useradd gabriel -m cria a pasta home caso preciso useradd gabrieç -m -c "usuario do sistema" comenta nome do usuario

useradd gabriel -m -c "administrador sys" -c /bin/bash passwd gabriel (criar a senha ususario ) useradd gabriel -, -c "sysadm" -s /bin/bash -p $(openssl passwd -crypt teste123)

permissao de shell chsh --help chsh -s /bin/bash nomedousuariosudo

Deletar usuario userdel -f nome do usuario userdell -r nome do usuario remove a pasta /home user dell -r -f gabriel (remove a pasta gabriel de /home e forca a remocao ususario gabriel )

usermod muda configuracoes usuario atual

usermod -c "systema" usermod -c "syadm" usermod -s /bin/bash

usermod -G gabriel sudo adiciona a permissao root para gabriel

#criar ou resetar senha usuario passwd gabriel passwd gabriel -e (faz com que a senha tenha ser traoca proximo login)

mudar usuario logado
su nomedoususario

ver ususarios cat /etc/passwd
sheelscript.sh criar usuarios

nano criarusuario.sh

#!/bin/bash

echo "criando usuarios no sistema"

./criarusuario.sh

-----------------------------------

# gerenciar grupos
cat /etc/groups - verificar os grupos criados

groupadd Grp_adm -adiciona um grupo com nome adm groupadd GRP_teste - adiciona um grupo com nome teste

groupdel nomedogrupo -deleta grupo

usermod -G Grp_teste gabriel - modifica o usuario gabriel para o grupo teste adiciona

gpasswd --help gpasswd -d gabriel sudo - remove o ususario gabriel do grupo sudo

useradd gabriel -c "administrador" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G Grp-adm

congecendo sistema permissao

RWX  | RWX   | RWX 
DONO | GRUPO | OUTROS

   usuario | grupo | diretorio
chown gabriel:Grp_adm /ADM change owner gabriel vira dono do diretorio e troca o grupo dono para Grp_adm

ls -l drwxr-xr-x 2 gabriel Grp_Adm 4096 Apr 9 13:10 ADM
mudar permissao diretorio chmod Read | Wire | execute | none 4 | 2 | 1 | 0
─# chmod 760 /ADM/

drwxrw---- 2 cybers Grp_Adm 4096 Apr 9 13:10 ADM
