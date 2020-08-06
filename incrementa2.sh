#!/bin/bash
tar -cpvzf "inc_backup_`date +%d%m%Y`.tgz" -g /home/soporte/carpeta-compartida /home/soporte/respaldos/*
