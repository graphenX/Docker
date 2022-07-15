#!/bin/bash

# This script must be run with "sudo -E bash -c "./build.sh"

git clone $GIT_IaC ./volumes

# Mount Ansible IaC on docker volume
docker run --rm -it -v ansible-iac:/tmp_iac -v $PWD/volumes/IaC:/IaC alpine cp -r /IaC/ /tmp_iac
docker run --rm -it -v ansible-iac:/test alpine ls /test/IaC

# Mount Ansible inventory on docker volume
docker run --rm -it -v ansible-inventory:/tmp_inventory -v $PWD/volumes/inventory:/inventory alpine cp -r /inventory/ /tmp_inventory
docker run --rm -it -v ansible-inventory:/test alpine ls /test/inventory

# Build Ansible contaniner
docker-compose up -d

docker exec -it ansible-mgmt sh
