FROM nginx
MAINTAINER Chin Godawita <chin.godawita@me.com>

# Install nginx.
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx

# Forward access and error logs to the Docker log collector.
RUN ln -sfv /dev/stdout /var/log/nginx/access.log
RUN ln -sfv /dev/stderr /var/log/nginx/error.log

# Copy content in.
COPY . /usr/share/nginx/html
