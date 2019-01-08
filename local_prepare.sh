#!/usr/bin/env bash

ansible-playbook "playbooks/local_prepare.yml" \
    --inventory="inventory/empty" \
    "$@"
