#!/bin/bash


cd eureka-server/ && mvn clean package && mvn spring-boot:run &
cd ..
cd admin-server/&& mvn clean package && mvn spring-boot:run &  
cd ..
cd gallery-service/&& mvn clean package && mvn spring-boot:run & 
cd ..
cd security-service/&& mvn clean package && mvn spring-boot:run & 
cd ..
cd user-service/ && mvn clean package && mvn spring-boot:run &
cd ..
cd zuul-service/ && mvn clean package && mvn spring-boot:run &

