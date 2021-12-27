#FROM marshallford/podman AS podman
# https://hub.docker.com/r/jenkins/jenkins/tags
FROM jenkins/jenkins:2.319.1-jdk11
USER root

RUN apt-get update && apt-get install -y lsb-release

RUN  apt-get install -y apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common \
     unzip 



RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/debian \
       $(lsb_release -cs) stable"
RUN apt-get update && apt-get install -y docker-ce-cli


## aws cli
RUN apt-get update \
    && apt-get install -y \
        python3 \
        python3-pip \
        python3-setuptools \
        groff \
        less \
    && pip3 install --upgrade pip \
    && apt-get clean



## aws cli version2 install
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install -i /usr/local/aws-cli -b /usr/local/bin
RUN aws --version


## 아래 명령어는 aws cli 가 버전 1로  설치가 되서 위의  명령어로 설치

# RUN pip3 --no-cache-dir install --upgrade awscli
RUN groupadd docker
RUN usermod -a -G docker jenkins



### git
RUN apt-get update && apt-get install -y git





### podman, buildah
RUN apt-get -y install podman 
RUN apt-get -y install buildah 

RUN echo -e "[registries.search]\nregistries = ['docker.io']" | tee /etc/containers/registries.conf


RUN curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose





