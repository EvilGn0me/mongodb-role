#!/bin/bash

TIMESTAMP=$(date +"%F")
BACKUP_DIR="{{ mongodb_conf.backup_dir }}/$TIMESTAMP"

mkdir -p "$BACKUP_DIR"

cd $BACKUP_DIR

mongodump --authenticationDatabase admin --username {{ mongodb_conf.user }} --password {{ mongodb_conf.password }}

find {{ mongodb_conf.backup_dir }}/ -type d -ctime +7 -exec rm -rf {} \;
