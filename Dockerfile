##########################################
# Dockerfile for a redis-server container.
# Runs redis-server on port 6379.
##########################################

FROM centos:centos7

# Maintener
MAINTAINER Suraj <suraj@gmail.com>

# Install Redis
RUN yum install epel-release -y && \
    yum update -y && \
    yum install redis -y && \
    yum clean all

# Copy config redis
ADD etc/redis.conf /etc/redis.conf

# User
USER root

# Mountable directories
VOLUME ["/var/lib/redis"]

# Set the environment variables
ENV HOME /var/lib/redis

# Working directory
WORKDIR /var/lib/redis

ENTRYPOINT ["/bin/bash", "-c", "/usr/bin/redis-server"]
CMD ["/etc/redis.conf"]

# Expose ports.
EXPOSE 6379
