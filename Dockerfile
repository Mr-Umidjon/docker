# this my dockerfile

FROM debian:buster-slim

RUN apt-get update \
  && apt-get install -y nginx

COPY ./index1.html /var/www/html


# CMD nginx -g daemon off;
CMD [ "nginx", "-g", "daemon off;" ]