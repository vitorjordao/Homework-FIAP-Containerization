FROM ubi8/ubi:8.3

LABEL org.opencontainers.image.authors="Vitor Jordão <vitorpeviano@gmail.com>"

LABEL description="A custom Apache container based on UBI 8"

RUN yum install -y httpd && \
    yum clean all

RUN echo "Hello from RM342688" > /var/www/html/index.html

EXPOSE 80

CMD [ "httpd", "-D", "FOREGROUND" ]