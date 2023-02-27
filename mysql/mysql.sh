#!/bin/bash
DATA_VOLUME=`pwd`/data
PORT=3306
ADMIN_PASSWORD=password

while getopts 'p:d:a:' flag; do
    case "${flag}" in
        p) PORT=${OPTARG} ;;
        d) DATA_VOLUME=${OPTARG} ;;
        a) ADMIN_PASSWORD=${OPTARG} ;;
    esac
done

docker run -it --rm -p $PORT:3306 -v $DATA_VOLUME:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=$ADMIN_PASSWORD mysql:8
