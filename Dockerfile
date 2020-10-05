FROM openjdk:14.0.2-jdk-buster
LABEL maintainer="Igor Kolomiyets <igor.kolomiyets@iktech.io>"
LABEL features="openjdk docker"

RUN apt-get update -y
RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
   
RUN apt-get update -y
RUN apt-get install -y docker-ce docker-ce-cli containerd.io
  