#!/bin/bash
#DATA_VOLUME=/opt/postgresql
DATA_VOLUME=`pwd`/data
PORT=3306
ADMIN_PASSWORD=password

docker run -it --rm -p $PORT:3306 -v $DATA_VOLUME:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=$ADMIN_PASSWORD mysql:8
