#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Usage: setup.sh /path/to/gitrepo"
    exit
fi

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

pToRepo=$1

mkdir -p /var/www/video_in/import
mkdir -p /var/www/video_out/
mkdir -p /var/spool/vector/
cp -r ${pToRepo}/php /var/www/
chmod -R 777 /var/spool/vector/ /var/www/video_*  /var/www/php
