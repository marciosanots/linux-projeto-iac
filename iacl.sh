#!/bin/bash

echo "criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /vend
mkdir /sec

echo "criando grupos de usuarios.."

groupadd GRP_ADM
groupadd GRP_VEND
groupadd GRP_SEC

echo "criando usuarios"

useradd carlos -m -p $(openssl passwd senha@123) -G GRP_ADM
useradd maria -m -p $(openssl passwd senha@123) -G GRP_ADM
useradd joao -m -p $(openssl passwd senha@123) -G GRP_ADM

useradd debora -m -p $(openssl passwd senha@123) -G GRP_VEND
useradd sebastiana -m -p $(openssl passwd senha@123) -G GRP_VEND
useradd roberto -m -p $(openssl passwd senha@123) -G GRP_VEND

useradd josefina -m -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -m -p $(openssl passwd senha@123) -G GRP_SEC
useradd rogerio -m -p $(openssl passwd senha@123) -G GRP_SEC

echo "permissoes dos diretorios"
chown root:GRP_ADM /adm
chown root:GRP_VEND /vend
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /vend
chmod 770 /sec
chmod 777 /publico

echo "fim...."
