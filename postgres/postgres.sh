#!/bin/bash
DATA_VOLUME=`pwd`/data
PORT=5432
ADMIN_PASSWORD=password

while getopts 'p:d:a:' flag; do
    case "${flag}" in
        p) PORT=${OPTARG} ;;
        d) DATA_VOLUME=${OPTARG} ;;
        a) ADMIN_PASSWORD=${OPTARG} ;;
    esac
done

docker run -it --rm -p $PORT:5432 -v $DATA_VOLUME:/var/lib/postgresql/data -e POSTGRES_PASSWORD=$ADMIN_PASSWORD postgres

#docker run --rm -it --net=host postgres psql -U postgres -h 127.0.0.1 -p 15432
