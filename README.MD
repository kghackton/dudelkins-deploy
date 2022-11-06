### Инструкция по развертыванию сервиса

**Требования**:
* docker 20.10+
* docker-compose

Docker образы собирались под архитектуру amd64. Функциональность на других архитектурах не гарантируется.

**Шаги**:
1. Склонируйте/скачайте данный репозиторий.
2. Воспользуйтесь коммандой:
```shell
make up
```
3. Для проверки корректного развертывания сервисов используйте команду:
```shell
docker-compose ps
```

В случае успеха - вы можете воспользоваться документацией HTTP API и сделать несколько(или больше) запросов.
Сервис разворачивается и слушает порт **10000**. 

Для проверки работы сервиса, в данном репозитории находится файл
_applications.csv_ (это малая часть предложенного организаторами хакатона датасета). Для загрузки заявок из данного файла
в сервис воспользуйтесь запросом _"Create Applications"_, передав в теле запроса количество заявок, которые вы хотите загрузить
из файла (**"rowsAmount": 500**).