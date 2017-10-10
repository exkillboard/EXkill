FROM php:5-fpm

RUN apt-get update -qq && apt-get install -y build-essential \
curl git sudo make openssl gcc apt-transport-https zip unzip cron

WORKDIR /code

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"

RUN git clone https://github.com/zKillboard/zKillboard.git

WORKDIR /code/zKillboard

RUN php /code/composer.phar install

COPY zkill/default.config.php config.php
COPY zkill/cron_zkill /etc/cron.d/cron_zkill

RUN chmod 0644 /etc/cron.d/cron_zkill

CMD cron && /bin/bash
