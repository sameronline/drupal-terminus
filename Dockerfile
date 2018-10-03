FROM wodby/drupal-php:latest

USER wodby
RUN curl -O "https://raw.githubusercontent.com/pantheon-systems/terminus-installer/master/builds/installer.phar" && php installer.phar --install-version=1.9 --install-dir=/home/wodby --bin-dir=~/bin
