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

useradd  carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_ADM
useradd  maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123)   -G GRP_ADM
useradd  joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123)    -G GRP_ADM

useradd  debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123)       -G GRP_VEN     
useradd  sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123)   -G GRP_VEN           
useradd  roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123)     -G GRP_VEN            

useradd  josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_SEC          
useradd  amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123)     -G GRP_SEC          
useradd  rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123)   -G GRP_SEC            

echo "Especificando Permissoes de Usuario.."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico












