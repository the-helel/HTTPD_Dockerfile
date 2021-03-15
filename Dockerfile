FROM centos:latest

RUN yum install httpd -y

COPY index.html /var/www/html

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

RUN echo /usr/sbin/httpd >> /root/.bashrc
