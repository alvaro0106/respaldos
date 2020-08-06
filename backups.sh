#!/bin/bash
DATE=$(date +%Y-%m-%d-%H%M%S)
BACKUP_DIR="/home/soporte/respaldos"
SOURCE="/home/soporte/carpeta-compartida"
tar -cvzpf $BACKUP_DIR/backup-$DATE.tar.gz $SOURCE


sudo cp /home/soporte/respaldos/*.tar.gz /media/usb/
