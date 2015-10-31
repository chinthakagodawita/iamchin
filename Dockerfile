FROM nginx
MAINTAINER Chin Godawita <chin.godawita@me.com>

# Forward access and error logs to the Docker log collector.
RUN ln -sfv /dev/stdout /var/log/nginx/access.log
RUN ln -sfv /dev/stderr /var/log/nginx/error.log

# Copy content in.
COPY . /usr/share/nginx/html
