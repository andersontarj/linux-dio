#!/bin/bash
echo "Script e criação de usuários."
sleep 3

#variaveis
gAdm=GRP_ADM
gVen=GRP_VEN
gSec=GRP_SEC
vOSsl='openssl passwd -crypt'
vSenha='Senha123'

echo "Criando diretórios."
sleep 1
mkdir /publico /adm /ven /sec
echo ''

echo "Criando grupos de usuários."
sleep 1
groupadd $gAdm && groupadd $gVen && groupadd $gSec
echo ''

echo "Criando usuários."
echo "grupo da administração"
sleep 1
useradd carlos -m -s /bin/bash -p $($vOSsl $vSenha) -G $gAdm
useradd maria -m -s /bin/bash -p $($vOSsl $vSenha) -G $gAdm
useradd joao -m -s /bin/bash -p $($vOSsl $vSenha) -G $gAdm
echo ''
echo "grupo de vendas"
sleep 1
useradd debora -m -s /bin/bash -p $($vOSsl $vSenha) -G $gVen
useradd sebastiana -m -s /bin/bash -p $($vOSsl $vSenha) -G $gVen
useradd roberto -m -s /bin/bash -p $($vOSsl $vSenha) -G $gVen
echo ''
echo "grupo das secretárias"
sleep 1
useradd josefina -m -s /bin/bash -p $($vOSsl $vSenha) -G $gSec
useradd amanda -m -s /bin/bash -p $($vOSsl $vSenha) -G $gSec
useradd rogerio -m -s /bin/bash -p $($vOSsl $vSenha) -G $gSec
echo ''

echo "Especificando permissões dos diretórios."
sleep 1
chown root:$gAdm /adm && chown root:$gVen /ven && chown root:$gSec /sec
echo ''

echo "Mudando as permissões dos diretórios."
sleep 1
chmod 770 /adm && chmod 770 /ven && chmod 770 /sec && chmod 777 /publico
echo ''

echo "Fim do script."
sleep 3
