FROM centos:latest

RUN yum install httpd -y

RUN yum install net-tools -y

COPY /var/www/html/index.html /var/www/html

CMD /usr/sbin/httpd

RUN echo /usr/sbin/httpd >> /root/.bashrc
