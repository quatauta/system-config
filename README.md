# Ansible Starter

## Getting started

```sh
git clone https://gitlab.com/quatauta/ansible-starter.git YOUR_PROJECT_NAME
cd YOUR_PROJECT_NAME/
./bin/setup
./bin/lint
```

## Various Ansible commands

### List Ansible inventory

* Development: `ansible-inventory --list`
* Staging: `ansible-inventory --list -i inventories/staging`
* Production: `ansible-inventory --list -i inventories/prod`

### Test remote connection and gather facts

* `ansible HOST_OR_GROUP_FROM_INVENTORY -m setup`
