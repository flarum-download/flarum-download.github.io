## Download

Flarum installation package with **English language pack**.

- [Flarum (ENG)](/storage/flarum.eng.tar.xz)

*View all of the files and the date of their creation [here](https://github.com/flarum-download/flarum-download.github.io/tree/main/docs/storage).*

## Server Requirements

- Apache (with `mod_rewrite` enabled) or Nginx.
- PHP 7.3+ with the following extensions: 
  - `curl`
  - `dom`
  - `gd`
  - `json`
  - `mbstring`
  - `openssl`
  - `pdo_mysql`
  - `tokenizer`
  - `zip`
- MySQL 5.6+ or MariaDB 10.0.5+.
- SSH (command-line) access to run **Composer**.

## Install

```
composer create-project flarum/flarum .
```

## Update

```
composer update --prefer-dist --no-plugins --no-dev -a --with-all-dependencies
php flarum migrate
php flarum cache:clear
```
