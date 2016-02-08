This repo contains some examples for building AWS AMIs and VMWare templates using Packer

# Folder structure

The packer code is structured as follows: -

- **bootstrap**: This folder contains bootstrap scripts for AWS and VMWare.
- **files**: This folder contains static files.
- **provisioners**: This folder contains provisioning Powershell scripts, Ansible playbooks, etc.
- **templates**: This folder contains the Packer templates. Each template sub-folder should contain a ```README.md``` explaining the usage of the template.
