#!/bin/bash

. defs.sh
./init.sh

pushd $USR/opt

fetch_tar http://releases.ansible.com/ansible/ansible-latest.tar.gz ansible

link_lib ansible

link_bin ansible ansible
link_bin ansible ansible-console
link_bin ansible ansible-doc
link_bin ansible ansible-galaxy
link_bin ansible ansible-playbook
link_bin ansible ansible-pull
link_bin ansible ansible-vault

update_env ANSIBLE_HOME '$USR/lib/ansible'
update_env PYTHONPATH '$ANSIBLE_HOME/lib'

popd

