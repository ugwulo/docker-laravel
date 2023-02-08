# Pull the php baseline image
FROM php:7.2-fpm-alpine

# Install the PHP development package
RUN apt-get update && apt-get install -y \
    php-dev \
    libpq-dev

# Install the PDO extension for PostgreSQL
RUN docker-php-ext-install pdo pdo_pgsql
