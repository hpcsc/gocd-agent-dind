ARG GOCD_VERSION=v18.2.0
FROM gocd/gocd-agent-ubuntu-16.04:$GOCD_VERSION
MAINTAINER David Nguyen <hungphuongjc@gmail.com>

ARG DOCKER_CE_PACKAGE=17.12.0~ce-0~ubuntu
RUN echo exit 0 > /usr/sbin/policy-rc.d && \
    apt-get update && \
    apt-get install -y apt-transport-https \
                       ca-certificates \
                       curl \
                       software-properties-common && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable" && \
    apt-get update && \
    apt-get install -y docker-ce=$DOCKER_CE_PACKAGE
