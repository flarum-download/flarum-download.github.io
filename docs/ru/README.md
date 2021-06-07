На данный момент, Flarum не имеет своей системы автоматической установки. Flarum использует инструмент [**Composer**](https://getcomposer.org/), который управляет пакетами Flarum и позволяет обновлять ядро и устанавливать / удалять расширения.

На этой странице описаны два варианта установки Flarum: при участии Composer и без Composer.

## Системные требования

- Apache (с включённым модулем `mod_rewrite`) или Nginx.
- PHP 7.3+ со следующими расширениями:
  - `curl`
  - `dom`
  - `gd`
  - `json`
  - `mbstring`
  - `openssl`
  - `pdo_mysql`
  - `tokenizer`
  - `zip`
- MySQL 5.6+ или MariaDB 10.0.5+.
- SSH (command-line) для запуска **Composer**.

## Без Composer

### Скачивание

Установочный пакет **Flarum** с интегрированным **русским языковым пакетом**.

- [Flarum (RUS)](https://github.com/flarum-download/storage/raw/main/flarum.rus.tar.xz)

*Посмотреть все архивы и дату их создания можно [здесь](https://github.com/flarum-download/storage).*

### Установка

### Обновление

## При помощи Composer

### Скачивание

```
composer create-project flarum/flarum .
```

### Установка

### Обновление

```
composer update --prefer-dist --no-plugins --no-dev -a --with-all-dependencies
php flarum migrate
php flarum cache:clear
```
