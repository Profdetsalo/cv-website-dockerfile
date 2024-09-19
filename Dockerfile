FROM ubuntu
MAINTAINER tsalo (profdetsalo@gmail.com)
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y nginx git
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/Profdetsalo/cv-website.git /var/www/html
ENTRYPOINT ["usr/sbin/nginx", "-g", "daemon off;"]
