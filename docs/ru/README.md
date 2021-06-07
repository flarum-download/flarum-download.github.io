## Скачивание

## Установка

```
composer create-project flarum/flarum .
```

## Обновление

```
composer update --prefer-dist --no-plugins --no-dev -a --with-all-dependencies
php flarum migrate
php flarum cache:clear
```
