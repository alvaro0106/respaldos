#!/bin/bash
BACKUP_DIR="/home/soporte/carpeta-compartida"
ROTATE_DIR="/home/soporte/respaldos"
TIMESTAMP="timestamp.dat"
SOURCE="$HOME/soporte/carpeta-compartida"
DATE=$(date +%Y-%m-%d-%H%M%S)

cd /

mkdir -p ${BACKUP_DIR}

set -- ${BACKUP_DIR}/backup-??.tar.gz
lastname=${!#}
backupnr=${lastname##*backup-}
backupnr=${backupnr%%.*}
backupnr=${backupnr//\?/0}
backupnr=$[10#${backupnr}]

if [ "$[backupnr++]" -ge 30 ]; then
mkdir -p ${ROTATE_DIR}/${DATE}
mv ${BACKUP_DIR}/b* ${ROTATE_DIR}/${DATE}
mv ${BACKUP_DIR}/t* ${ROTATE_DIR}/${DATE}
backupnr=1
fi

backupnr=0${backupnr}
backupnr=${backupnr: -2}
filename=backup-${backupnr}.tar.gz

tar -cpzf ${BACKUP_DIR}/${filename} -g ${BACKUP_DIR}/${TIMESTAMP} -X $EXCLUDE ${SOURCE}
