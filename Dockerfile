FROM wordpress:latest

RUN apt-get update && \
    apt-get install -y libical-dev && \
    docker-php-ext-configure calendar && \
    docker-php-ext-install calendar
