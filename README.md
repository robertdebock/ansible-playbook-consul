# Ansible playbook for Consul

## Setup

1. Download the Ansible roles:

```shell
ansible-galaxy install -r roles/requirements.yml
```

The state of the used roles:

|Role name|GitHub Action|GitLab CI|Version|
|---------|-------------|---------|-------|
|[bootstrap](https://galaxy.ansible.com/robertdebock/bootstrap)|[![github](https://github.com/robertdebock/ansible-role-bootstrap/workflows/Ansible%20Molecule/badge.svg)](https://github.com/robertdebock/ansible-role-bootstrap/actions)|[![gitlab](https://gitlab.com/robertdebock/ansible-role-bootstrap/badges/master/pipeline.svg)](https://gitlab.com/robertdebock/ansible-role-bootstrap)|[![version](https://img.shields.io/github/commits-since/robertdebock/ansible-role-bootstrap/latest.svg)](https://github.com/robertdebock/ansible-role-bootstrap/releases)|
|[update](https://galaxy.ansible.com/robertdebock/update)|[![github](https://github.com/robertdebock/ansible-role-update/workflows/Ansible%20Molecule/badge.svg)](https://github.com/robertdebock/ansible-role-update/actions)|[![gitlab](https://gitlab.com/robertdebock/ansible-role-update/badges/master/pipeline.svg)](https://gitlab.com/robertdebock/ansible-role-update)|[![version](https://img.shields.io/github/commits-since/robertdebock/ansible-role-update/latest.svg)](https://github.com/robertdebock/ansible-role-update/releases)|
|[core_dependencies](https://galaxy.ansible.com/robertdebock/core_dependencies)|[![github](https://github.com/robertdebock/ansible-role-core_dependencies/workflows/Ansible%20Molecule/badge.svg)](https://github.com/robertdebock/ansible-role-core_dependencies/actions)|[![gitlab](https://gitlab.com/robertdebock/ansible-role-core_dependencies/badges/master/pipeline.svg)](https://gitlab.com/robertdebock/ansible-role-core_dependencies)|[![version](https://img.shields.io/github/commits-since/robertdebock/ansible-role-core_dependencies/latest.svg)](https://github.com/robertdebock/ansible-role-core_dependencies/releases)|
|[hashicorp](https://galaxy.ansible.com/robertdebock/hashicorp)|[![github](https://github.com/robertdebock/ansible-role-hashicorp/workflows/Ansible%20Molecule/badge.svg)](https://github.com/robertdebock/ansible-role-hashicorp/actions)|[![gitlab](https://gitlab.com/robertdebock/ansible-role-hashicorp/badges/master/pipeline.svg)](https://gitlab.com/robertdebock/ansible-role-hashicorp)|[![version](https://img.shields.io/github/commits-since/robertdebock/ansible-role-hashicorp/latest.svg)](https://github.com/robertdebock/ansible-role-hashicorp/releases)|
|[consul](https://galaxy.ansible.com/robertdebock/consul)|[![github](https://github.com/robertdebock/ansible-role-consul/workflows/Ansible%20Molecule/badge.svg)](https://github.com/robertdebock/ansible-role-consul/actions)|[![gitlab](https://gitlab.com/robertdebock/ansible-role-consul/badges/master/pipeline.svg)](https://gitlab.com/robertdebock/ansible-role-consul)|[![version](https://img.shields.io/github/commits-since/robertdebock/ansible-role-consul/latest.svg)](https://github.com/robertdebock/ansible-role-consul/releases)|


2. Download the terraform providers and modules:

```shell
cd terraform
terraform init
```

3. Set the DigitalOcean and CloudFlare credentials:

```shell
export TF_VAR_do_token="REPLACE_ME_WITH_THE_DO_TOKEN"
export TF_VAR_cloudflare_api_token="REPLACE_ME_WITH_THE_CF_TOKEN"
```

## Installation

Apply the playbook:

```shell
./playbook.yml
```

```shell
ssh -i ssh_keys/id_rsa root@${machine}
```
