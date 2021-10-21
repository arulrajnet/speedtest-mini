FROM debian:wheezy

MAINTAINER Arulraj Venni <me@arulraj.net>

# Install Apache, PHP5 and speedtest mini zip
# 2021.10.20: Updated mini.zip url from last available archive.org archived url
RUN apt-get update -qq \
  && apt-get install -y wget unzip apache2 php5 php5-mysql php5-gd php5-mcrypt \
  && wget https://web.archive.org/web/20180218001701/http://c.speedtest.net/mini/mini.zip -O /tmp/mini.zip \
  && mkdir -p /var/www/mini \
  && unzip /tmp/mini.zip -d /var/www/ \
  && cd /var/www/mini \
  && mv index-php.html index.html \
  && mv * ../ \
  && echo "ServerName localhost" | tee /etc/apache2/conf.d/fqdn \
  && apt-get clean autoclean \
  && apt-get autoremove -y \
  && rm -rf /var/lib/{apt,dpkg,cache,log}/* /tmp/* /var/tmp/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# Ports
EXPOSE 80

CMD [ "speedtest-server" ]
