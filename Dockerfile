FROM php:7.1-apache

ENV PATH "/composer/vendor/bin:$PATH"
ENV COMPOSER_ALLOW_SUPERUSER 1

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    zip \
    nano \
    unzip &&\
    apt-get clean

RUN curl -s https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    composer global require hirak/prestissimo &&\
    composer global require composer-synchronizer/composer-synchronizer

EXPOSE 80
