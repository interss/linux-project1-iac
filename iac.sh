#!/bin/bash

echo "Criando Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de Usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"

useradd carlos -c "Carlos Silva" -m -s /bin/bash -G GRP_ADM && echo "carlos:Senha123" | chpasswd
useradd maria -c "Maria Silva" -m -s /bin/bash -G GRP_ADM && echo "maria:Senha123" | chpasswd
useradd joao -c "João Silva" -m -s /bin/bash -G GRP_ADM && echo "joao:Senha123" | chpasswd

useradd debora -c "Débora Silva" -m -s /bin/bash -G GRP_VEN && echo "debora:Senha123" | chpasswd
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -G GRP_VEN && echo "sebastiana:Senha123" | chpasswd
useradd roberto -c "Roberto Silva" -m -s /bin/bash -G GRP_VEN && echo "roberto:Senha123" | chpasswd

useradd josefina -c "Josefina Silva" -m -s /bin/bash -G GRP_SEC && echo "josefina:Senha123" | chpasswd
useradd amanda -c "Amanda Silva" -m -s /bin/bash -G GRP_SEC && echo "amanda:Senha123" | chpasswd
useradd rogerio -c "Rogério Silva" -m -s /bin/bash -G GRP_SEC && echo "rogerio:Senha123" | chpasswd

echo "Especificando Permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Fim..."




