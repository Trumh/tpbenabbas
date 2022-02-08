#!/bin/sh
mvn clean package && docker build -t com.tpjee.app/tpjee .
docker rm -f tpjee || true && docker run -d -p 9080:9080 -p 9443:9443 --name tpjee com.tpjee.app/tpjee