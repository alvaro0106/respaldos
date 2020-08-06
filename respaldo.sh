#!bin/bash
FECHA_Y_HORA=`date "+%d-%m-%y_%H-%M-%S"`
NOMBRE_ARCHIVO="respaldo_$FECHA_Y_HORA.tgz"
CARPETA_DESTINO="./respaldos"
CARPETA_RESPALDAR="/home/soporte/carpeta-compartida"
# Creamos el directorio para los respaldos por si no existe
mkdir -p "$CARPETA_DESTINO"
tar cfvz "$CARPETA_DESTINO/$NOMBRE_ARCHIVO" "$CARPETA_RESPALDAR"

