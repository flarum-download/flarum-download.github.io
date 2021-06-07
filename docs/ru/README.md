## Скачивание

Установочный пакет **Flarum** с интегрированным **русским языковым пакетом**.

- [Flarum (RUS)](https://github.com/flarum-download/storage/raw/main/flarum.rus.tar.xz)

*Посмотреть все архивы и дату их создания можно [здесь](https://github.com/flarum-download/storage).*

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
