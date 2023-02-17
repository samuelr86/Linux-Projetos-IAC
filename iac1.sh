#!/bin/bash

echo "Criando diretório público...."
mkdir publico

cd publico

echo "Criando subdiretórios adm, ven e sec...."
mkdir adm ven sec


echo "Criando grupos GRP_ADM GRP_VEN GRP_SEC ...."

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC


echo "Criação de pastas e grupos concluída!"


echo "Criando usuários de adm..."

cd /publico/adm

useradd carlos -m -c "Carlos da Silva" -p $(openssl passwd -crypt Senha123) -s /bin/bash
passwd carlos -e
usermod -G GRP_ADM carlos

useradd maria -m -c "Maria da Silva" -p $(openssl passwd -crypt Senha123) -s /bin/bash
passwd maria -e
usermod -G GRP_ADM maria

useradd joao -m -c "João da Silva" -p $(openssl passwd -crypt Senha123) -s /bin/bash
passwd joao -e
usermod -G GRP_ADM joao

echo "Criando usuários de ven..."

cd /publico/ven

useradd debora -m -c "Débora da Silva" -p $(openssl passwd -crypt Senha123) -s /bin/bash
passwd debora -e
usermod -G GRP_VEN debora

useradd sebastiana -m -c "Sebastiana da Silva" -p $(openssl passwd -crypt Senha123) -s /bin/bash
passwd sebastiana -e
usermod -G GRP_VEN sebastiana

useradd roberto -m -c "Roberto da Silva" -p $(openssl passwd -crypt Senha123) -s /bin/bash
passwd roberto -e
usermod -G GRP_VEN roberto

echo "Criando usuários de sec..."
cd /publico/sec

useradd josefina -m -c "Josefina da Silva" -p $(openssl passwd -crypt Senha123) -s /bin/bash
passwd josefina -e
usermod -G GRP_SEC josefina

useradd amanda -m -c "Amanda da Silva" -p $(openssl passwd -crypt Senha123) -s /bin/bash
passwd amanda -e
usermod -G GRP_SEC amanda

useradd rogerio -m -c "Rogério da Silva" -p $(openssl passwd -crypt Senha123) -s /bin/bash
passwd rogerio -e
usermod -G GRP_SEC rogerio

echo "Criação de usuários concluída!"

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven 
chown root:GRP_SEC /sec 

chmod 770 /adm 
chmod 770 /ven 
chmod 770 /sec 

chmod 777 /publico

echo "Fim..."
