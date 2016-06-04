# ansible_frontend_playbook
ansible playbook for web frontend development.(compass, gulp, webpack)

## What's this?
If you want to develop web frontend with gulp, webpack, and npm packages,
this vagrant virtual machine is useful for starting setup enviroment.

### Virtual machine's OS
* ubuntu for vagrant. (https://atlas.hashicorp.com/ubuntu/boxes/trusty64)

### Install by provisioning.
* rbenv + ruby-build + ruby-dev
* compass
* nodejs
* gulp, webpack

### Recommend folder structure.
```
/
|- htdocs/ (your web contents.)
|- package.json
|- gulpfile.js
|- webpack.config.js
|- ansible_frontend_playbook
   |- Vagrant
   |- provision.sh
   |- ansible/
      ...
```

### use
```
$ vagrant up
```

### Software version select.
Open editor `.ansible/group_vars/all`.

Change ruby version.
```
ruby_versions:
    - 2.1.10
```

Change node version.
```
node_version: 6.x
```


### (windows only) npm install option.
```
npm install --no-bin-links
```
When npm install in share folder, You must this option because of windows filesystem restriction. (Windows can't make symbolic link)

### (windows only) npm version upper 3
Recommend npm3 upper because of windows filesystem restriction.(Windows can't handling too long path.)

----------------------

## about specifications
### flow
1. Vagrantfile make virtual machine
2. Vagrant provisionning execute ./provision.sh
3. Shell run basically update and ansible install in vagrant virtual machine.
4. Run ansible `./ansible/master.yml`
5. Ansible install software.(ruby,node,npm packages.)

### shared folder for vagrant machine
* ../ -> /vagrant
  * working dir.
* ./ -> /provision
  * for vagrant provisioning.

-----------------------------

## Special thanks

### rbenv,ruby,ruby-multi playbook

leucos/ansible-rbenv-playbook

(https://github.com/leucos/ansible-rbenv-playbook)


