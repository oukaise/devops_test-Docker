Тестовое задание

---

## Инструкция

1. Установить docker(https://docs.docker.com/engine/install/ubuntu/) и docker compose(https://docs.docker.com/desktop/setup/install/linux/)
2. Клонироват мой репозиторий и зайти в папку devopstest:
   git clone https://github.com/oukaise/devopstest.git
   cd devopstest 
3. Запустить проект:
   Docker compose up -d
4. Открыть в браузере http://localhost и убедиться что все работает


# Переменные были использованны такие же как в README папки "php скрипт для запуска"

## СТРУКТУРА РЕПОЗИТОРИЯ 
    1 ЗАДАНИЕ
    php/
      index.php - ваш php скрипт
      Dockerfile - настраивает php и копирует исходники
      composer.json - описывает зависимости:  расширения pdo,redis
      vendor/ - автогенерируется composer install
    nginx/default.conf - конфигурация nginx, проксирующая траффик PHP-FPM
    docker-compose.yml - описывает инфраструктуру:
      php (php-fpm + composer + зависимости)
      nginx (веб-сервер)
      postgres (база данных)
      redis (кеш/память)
    
    2 ЗАДАНИЕ 
    main.yml - ansible плейбук, который: 
      устанавливает докер
      клонирует этот проект с github
      запускает проект через docker compose up -d
    
    3 ЗАДАНИЕ
    check_port.sh - Bash скрипт, который:
      Принимает аргументы host и port
      Проверяет доступен ли указанный порт
      Если нет пишет лог в check_port.log
      перед запуском выдать +x 
      сам пример запуска:
      ./check_port.sh 127.0.0.1 5432


## ЧТО ДЕЛАЕТ ПРОЕКТ
    Поднятие контейнеров через Docker Compose
    Провекрка и подключение к Redis и Postgresql из PHP
    Поддержкивает установку на множество сервером одним плейбуком
    И файл с проверкой доступности порта реализованный на bash
    
  

