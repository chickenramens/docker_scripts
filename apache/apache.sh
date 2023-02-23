#!/bin/bash
DATA_VOLUME=`pwd`/data
PORT=81

docker run --rm -p $PORT:80 -v $DATA_VOLUME:/usr/local/apache2/htdocs/ httpd:2.4
