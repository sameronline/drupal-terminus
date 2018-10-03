FROM wodby/drupal-php:7.2

USER wodby
ENV WODBY_APP_NAME=terminus
RUN cd /tmp && curl -O "https://raw.githubusercontent.com/pantheon-systems/terminus-installer/master/builds/installer.phar" && php installer.phar install --install-version=1.9 --install-dir=/home/wodby --bin-dir=/usr/local/bin
RUN echo "alias terminus=/home/wodby/vendor/bin/terminus" >> ~/.bashrc
