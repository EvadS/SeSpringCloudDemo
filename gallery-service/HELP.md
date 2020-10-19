# Getting Started

##Mongo
Установка docker:
в консоли
sudo apt-get update
sudo apt install docker.io

Install mongo 
```bash
    docker pull mongo
```
Check version
```bash
    docker images
```
Run mongo. There is port **27017** bt default
```bash
    docker run mongo
```

remove prev version  
```bash
    docker rmi $(docker images |grep 'mongo') --force
```
OR with specific port 
```bash  
docker run --name mongodb -p27018:27017 mongo
```
OR with specific admin user 
```bash
 docker run -d --name my-mongo \
    -e MONGO_INITDB_ROOT_USERNAME=mongoadmin \
    -e MONGO_INITDB_ROOT_PASSWORD=3132333435 \
    mongo
```

###Work with mongo console 
Open console. Or use another client. 
```bash
    mongo --port 27018
```
Connect to gallerydb - our db 
```bash
use gallerydb
```

```bash
show collections
```

### reactive web

```http request
http://localhost:8081/getAll
``` 

New value each seconds 
```http request
http://localhost:8081/stream/buckets/delay
```





