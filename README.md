# dotfiles

Manage dotfiles and preferences of my devices using Ansible.


``` shell
ansible-playbook -i hosts.yml playbooks/*.yml --ask-become-pass
```

## Goals

- :mortar_board: **Learn:** Get familiar with Ansible
- :sparkles: **Personalize:** Automate system customization for efficient workflow and pleasant UI
- :rocket: **Time-saving:** Quick setup of new systems and maintenance (e. g. software upgrades, synchronization of configs) of existing systems
- :recycle: **Reuseable:** Scripts are compatible with every OS, hardware, etc. *that I use*


## Prerequisites

To run the playbooks of this repository, the `ansible` software package must be installed on the system. See the [installation guide](https://docs.ansible.com/ansible/latest/installation_guide/index.html) of the Ansible documentation.

