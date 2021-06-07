## Download

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
