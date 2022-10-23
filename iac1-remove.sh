#!/bin/bash
echo "Script e remoção de usuários, Grupos e Diretórios."
sleep 3

#variaveis
gAdm=GRP_ADM
gVen=GRP_VEN
gSec=GRP_SEC

echo "delete diretórios criados."
rm -fr /publico /adm /ven /sec

echo "Remove usuários."
echo "grupo da administração"
userdel -f -r carlos
userdel -f -r maria
userdel -f -r joao
echo "grupo de vendas"
userdel -f -r debora
userdel -f -r sebastiana
userdel -f -r roberto
echo "grupo das secretárias"
userdel -f -r josefina
userdel -f -r amanda
userdel -f -r rogerio

echo "deleta grupos de usuários criados."
groupdel $gAdm && groupdel $gVen && groupdel $gSec

echo "Fim do script."
