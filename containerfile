FROM fedora:latest
RUN dnf upgrade -y
RUN dnf install -y tuxpaint vim httpd
COPY myinfo.html /var/www/html/
EXPOSE 80/tcp
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND