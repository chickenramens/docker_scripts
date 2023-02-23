#!/bin/bash
#DATA_VOLUME=/opt/postgresql
DATA_VOLUME=`pwd`/data
PORT=15432
ADMIN_PASSWORD=password

docker run -it --rm -p $PORT:5432 -v $DATA_VOLUME:/var/lib/postgresql/data -e POSTGRES_PASSWORD=$ADMIN_PASSWORD postgres
