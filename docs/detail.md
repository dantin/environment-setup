## Detail

This documents discribes detail tasks of each Ansible Playbook.

### Local Prepare

The script `local_prepare.sh` downloads third party code & binary from Internet.

The downloading stuff includes:

- Source Code
  - vim
  - git
  - tmux
- Binary
  - golang

### Bootstrap

Bootstrap installs software and do the basic configuration, which is implemented by the script `bootstrap.sh`.

Task Items:
- Enable EPEL/Extra EPEL repository
- Install base softwares (e.g. ntp)
- Install common softwares (e.g. git, tmux, vim...)
- Setup global environment (e.g. hostname, LC_ALL, LANG...)

### Prepare User Account

TBD

### `prepare_nodes.sh`

TBD

### `configure_nodes.sh`

TBD
