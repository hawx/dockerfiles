# Modified from https://github.com/dockerfile/nginx/blob/6bfe874a17f79e8eb959a855ca5d841a2fef93be/Dockerfile
FROM       ubuntu:14.04
MAINTAINER Joshua Hawxwell <m@hawx.me>

RUN \
  apt-get update && \
  apt-get install -qqy nginx && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

VOLUME ["/data", "/etc/nginx", "/var/log/nginx"]
EXPOSE 80
EXPOSE 443

WORKDIR /etc/nginx
CMD ["nginx"]
