## Dockerfile

```dockerfile
FROM centos:latest
MAINTAINER  shubhamrasal

# Install httpd
RUN yum install httpd -y

# Copy file to document root
COPY . /var/www/html/

#expose port
EXPOSE 80

#start the httpd service
CMD ["/usr/sbin/httpd", "-D","FOREGROUND"]
```

## Build

Copy the  Dockerfile and do the build

`# docker build --tag <username>/httpd .`

## Usage

`# docker run -dit --name myhttpd -p 8080:80 <username>/httpd`

`# docker ps`

## Test

`# curl http://localhost:8080`
