At the moment, Flarum does not have its own automatic installation system. Flarum uses the [**Composer**](https://getcomposer.org/) tool which manages Flarum packages and allows you to update the core and install / remove extensions.

This page describes two options for installing Flarum: with and without Composer.

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

## Without Composer

### Download

**Flarum** installation package with integrated **English language pack**.

- [Flarum (ENG)](https://github.com/flarum-download/storage/raw/main/flarum.eng.tar.xz)

*View all of the files and the date of their creation [here](https://github.com/flarum-download/storage).*

### Install

### Update

## With Composer

### Download

```
composer create-project flarum/flarum .
```

### Install

### Update

```
composer update --prefer-dist --no-plugins --no-dev -a --with-all-dependencies
php flarum migrate
php flarum cache:clear
```
