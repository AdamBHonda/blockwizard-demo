Challenge
---------

Blockwizard is an exciting new application to investigate trends in blockchain transactions. It is very much in its infancy, but your task is to get the current application stack up and running on some bare Ubuntu 18.04 (bionic) machines using all the devops skills at your disposal.

The Blockwizard architecture is fairly typical for a clustered Java application and should be runnable using the standard Ubuntu JRE. It consists of a broker, and  multiple worker nodes. Each component needs to be installed and should reside on its own dedicated host. Hostnames should reflect those already defined in the configuration. Once installed, a curl request to `http://broker:16000/blocks` is expected to return the available blocks within the system.

The application can be started based on the current configuration files with the command: `start.sh [broker|node1|node2]`. It is allowable but not required to modify the configuration files (e.g. for templating). 

It is open to yourself how you provision the bare machines. For example, you might want to set-up some blank machines on AWS, use a [Vagrant VM](http://vagrantup.com), or a set of [Docker](http://docker.com) images.

  - The application itself must be provisioned using [Ansible](http://ansible.com)
  - The application should not run as a privileged user
  - The application should automatically be restarted if the app crashes or is killed
  - Application logs, stdout/stderr should be captured to `/var/log/blockwizard/`

Once complete, please send us the Ansible code/templates as a zip/tarball along with a brief summary of how the playbooks are executed and what environments it has been executed against.

The submission will be evaluated based on completion of the requirements, code simplicity, code quality, and documentation. 

We appreciate your time is valuable, so the following is not required, but in the event the challenge proves too simple, you might like to consider concerns such as security, scalability, application monitoring and log aggregation.