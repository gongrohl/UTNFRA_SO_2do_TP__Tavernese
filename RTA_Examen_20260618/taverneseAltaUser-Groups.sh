#!/bin/bash

echo
echo "Para ejecutar: $0 <usuario_origen_clave> <path_lista_usuarios>"
echo


USUARIO_ORIGEN=$1
LISTA=$2


HASH_CLAVE=$(sudo grep "^${USUARIO_ORIGEN}:" /etc/shadow | cut -d: -f2)


ANT_IFS=$IFS
IFS=$'\n'


for LINEA in `cat $LISTA | grep -v ^#`
do
    
    USUARIO=$(echo $LINEA | awk -F ',' '{print $1}')
    GRUPO=$(echo $LINEA | awk -F ',' '{print $2}')
    HOME_DIR=$(echo $LINEA | awk -F ',' '{print $3}')
    
    
    
    if getent group "$GRUPO" > /dev/null 2>&1; then
        echo "El grupo $GRUPO ya existe."
    else
        sudo groupadd "$GRUPO"
        echo "Grupo $GRUPO creado con éxito."
    fi
    
    
    if getent passwd "$USUARIO" > /dev/null 2>&1; then
        echo "El usuario $USUARIO ya existe."
    else
        
        sudo useradd -m -d "$HOME_DIR" -s /bin/bash -g "$GRUPO" -p "$HASH_CLAVE" "$USUARIO"
        echo "Usuario $USUARIO creado y asignado al grupo $GRUPO."
    fi
    echo "----------------------------------------"

done
IFS=$ANT_IFS
