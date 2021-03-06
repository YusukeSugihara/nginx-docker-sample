# Use centos 7
FROM centos:7

# Add repos for nginx
ADD repo/nginx.repo /etc/yum.repos.d/nginx.repo

# Install nginx
RUN yum update -y && \
    yum install -y nginx

# Add source
ADD app /app
ADD default.conf /etc/nginx/conf.d/default.conf

# Set port
EXPOSE 80

RUN mkdir -p /run/nginx

CMD nginx -g "daemon off;"
