This repo contains some examples for building AWS AMIs and VMWare templates using Packer

# Folder structure

The packer code is structured as follows:

- **bootstrap**: This folder contains bootstrap scripts for AWS and VMWare.
- **files**: This folder contains static files.
- **provisioners**: This folder contains provisioning Powershell scripts, Ansible playbooks, etc.
- **templates**: This folder contains the Packer templates. Each template sub-folder should contain a ```README.md``` explaining the usage of the template.

# How to use the templates

## VMWare

- Install either VMWare Fusion if you are using MacOSx or VMWare Workstation if you are using Windows or Linux
- Run `packer build templates/windows-server-2012/vmware-2012R2-servicebox.json`

## AWS AMIs

- Create a VPC with at least a subnet where you will run the instance to build the AMI
- Create a Security group allowing ports 3389 (RDP) and 5985 (WinRM)
- Run `packer build -var 'aws_access_key=YOUR_KEY' -var 'aws_secret_key=YOUR_SECRET' -var 'subnet_id=subnet-XXXXXX' -var 'security_group_id=sg-YYYYYY' templates/windows-server-2012/aws-win2012R2-servicebox.json` or if you have the AWS CLI tool configure with an ~/.aws/credentials file you can omit the aws credentals parameters
