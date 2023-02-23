#!/bin/bash
DATA_VOLUME=`pwd`/webapps
PORT=8081
DEBUG_PORT=8010

docker run -it --rm -p $PORT:8080 -p $DEBUG_PORT:8000 -v $DATA_VOLUME:/usr/local/tomcat/webapps -e JPDA_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:8000" tomcat:9.0 catalina.sh jpda run
