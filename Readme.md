#Spring cloud netlix stack 

## Netflix OSS
Used: Eureka, Config Server, Config Client, Zuul Api Gateway, Feign Client, RestTemplate, WebClient, Hystrix, Ribbon, Security (JWT) + MongoDB + Docker + Reactive (Spring WebFlux).

## part 1 
 - Eureka Server
 - Eureka Client(User-Service, Gallery-Service)

Service Communication
RestTemplate, Feign Clientи WebClient. 

Reactive Streams(WebFlux)

## part 2
  - Zuul


### Testing 
Тестируем:
Запустите вначале Eureka Server. 

###  Настройка уведомлений о статусе приложений (UP/ DOWN)
Зайти в проект demo-admin-server 
добавить файл mail.properties в /src/main/resources (для удобства можно переименовать mail.properties.demo )
 и проставить свои логин / пароль от GOOGLE почты 




Затем запустите 
* gallery-service
* admin-server
* user-service
* zuul-service
* security-service.

eureka-server 
	mvn clean package && mvn spring-boot:run &
admin-server
	 mvn clean package && mvn spring-boot:run &  
gallery-service
        mvn clean package && mvn spring-boot:run & 
security-service
        mvn clean package && mvn spring-boot:run & 
user-service
	mvn clean package && mvn spring-boot:run &
zuul-service
	mvn clean package && mvn spring-boot:run &



Сначала попробуем получить доступ к gallery-service без токена (через наш zuul-service, а не напрямую в gallery-service)

curl --request GET url http://localhost:8766/gallery  

Для того, чтобы получить токен, отправьте POST запрос на наш zuul-service через Postman (например)

POST
localhost:8766/auth
{
	"username":"admin",
	"password":"admin"
}

Скопируйте и вставьте его в Authorization — и выберите там Bearer token
А теперь отправьте запрос на gallery-service через наш zuul-service 

localhost:8766/gallery


Errors :
The Tomcat connector configured to listen on port 8761 failed to start

Ubuntu
lsof -i:8080
kill -9 20712 
