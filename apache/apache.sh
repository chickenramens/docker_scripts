#!/bin/bash
DATA_VOLUME=`pwd`/data
CONF_VOLUME=`pwd`/conf
PORT=80

while getopts 'p:d:c:' flag; do
    case "${flag}" in
        p) PORT=${OPTARG} ;;
        d) DATA_VOLUME=${OPTARG} ;;
        c) CONF_VOLUME=${OPTARG} ;;
    esac
done

docker run --rm -p $PORT:80 -v $DATA_VOLUME:/usr/local/apache2/htdocs -v $CONF_VOLUME:/usr/local/apache2/conf httpd:2.4
