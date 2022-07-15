####  IMAGE
FROM alpine:latest

####  LABELING
MAINTAINER graphenx@tutanota.com

####  ARGS
ARG home=/root/
ARG ansible_path=/root/IaC
ARG ansible_ssh_key=/root/.ssh/ed25519_docker

####  ENVIROMENT VARIABLES
ENV HOME=$home
ENV ANSIBLE_PATH=$ansible_path
ENV ANSIBLE_SSH_KEY=$ansible_ssh_key

####  INIT PATH
#WORKDIR $ANSIBLE_PATH

####  PACKAGES
RUN apk update && apk upgrade && apk add --no-cache tmux vim openssh ansible git python3 py3-pip
RUN pip install pywinrm
