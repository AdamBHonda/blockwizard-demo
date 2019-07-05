# Blockwizard ansible demo
A simple playbook to deploy the blockwizard application

## Solution approach
The ansible playbooks and roles have been created for simplicity and readability first.

There are just 2 roles, one to customise the environment ready for the application, called init, and one to deploy the application, called app.

Each role is split in to tasks purely to allow component testing with tags

Some customisation was required to run in docker containers but I've included a systemd service for use in a 'real' environment, i.e. playbooks/roles/app/templates/blockwizard.service starts and restarts the app in the event of failure.


## Pre-requisites
- SSH access to 3 JRE hosts named broker, node1, node2
- Ansible >= v2.0

## Demo environment included in this repo
- Docker files and docker compose to create 3 containers with the required ports exposed
- local SSH config and keys just for this test
- local ansible configuration
- local ansible inventory file

## Create the demo docker environment with
```docker-compose up -d```

## Run this playbook with
```ansible-playbook playbooks/deploy.yml```

## Test the app (docker)
```curl http://localhost:16000/blocks```
