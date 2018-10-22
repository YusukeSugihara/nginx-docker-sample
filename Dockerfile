# Use centos 7
FROM centos:7

# Install nginx
RUN yum update -y && \
    yum install -y nginx

# Add source
ADD app /app
ADD default.conf /etc/nginx/conf.d/default.conf

# Set port
EXPOSE 80

RUN mkdie -p /run/nginx

CMD nginx -g "daemon off;"
