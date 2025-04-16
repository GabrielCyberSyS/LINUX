#! /bin/bash

echo "Criando ususarios.."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios.."

groupadd GRP_AD
groupadd GRP_VEN
groupadd GRP_SEC

echo   "criando ususarios.."

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM && sudo passwd --expire carlos
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM && sudo passwd --expire maria
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM && sudo passwd --expire joao

useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM && sudo passwd --expire joao
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM && sudo passwd --expire sebastiana
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM && sudo passwd --expire roberto

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM && sudo passwd --expire josefina
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM && sudo passwd --expire amanda
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM && sudo passwd --expire rogerio

echo "Especificando Permissoes de Usuario.."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico












