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
Затем запустите 
* gallery-service
* user-service
* zuul-service
* security-service.



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
