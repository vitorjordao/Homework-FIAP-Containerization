# Our image was pushed on dockerhub as a vitorjordao/app-example:1.0.0
FROM redhat/ubi8:latest

LABEL org.opencontainers.image.authors="Vitor Jordão <vitorpeviano@gmail.com>"

LABEL description="A custom Apache container based on UBI 8"

RUN yum install -y httpd && \
    yum clean all

RUN echo "Hello from RM342688" > /var/www/html/index.html

EXPOSE 80

CMD [ "httpd", "-D", "FOREGROUND" ]