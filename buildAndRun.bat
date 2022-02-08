@echo off
call mvn clean package
call docker build -t com.tpjee.app/tpjee .
call docker rm -f tpjee
call docker run -d -p 9080:9080 -p 9443:9443 --name tpjee com.tpjee.app/tpjee