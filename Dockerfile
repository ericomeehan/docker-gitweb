FROM httpd
RUN apt-get update && apt-get install -y git gitweb
COPY conf/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY conf/httpd-gitweb.conf /usr/local/apache2/conf/extra/httpd-gitweb.conf
COPY conf/gitweb.conf /etc/gitweb.conf
