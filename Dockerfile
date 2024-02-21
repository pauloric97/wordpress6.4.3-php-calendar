FROM wordpress:6.4.3

RUN apt-get update && \
    apt-get install -y libical-dev && \
    docker-php-ext-configure calendar && \
    docker-php-ext-install calendar
