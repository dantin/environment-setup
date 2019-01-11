# Environment Setup

Ansible Playbooks that setup Linux Box automatically.

## Playbooks

The following describes detail jobs of each playbook.

### Download Software

The script `local_prepare.sh` support downloading third party open source code & software from Internet.

```
$ ./local_prepare.sh
```

The downloaded software:

- Source Code
  - vim
  - git
  - tmux
- Binary
  - golang

__NOTE__:

> You need make sure connection to Internet is OK before trigger this script.
> If you are under the GFW, please also make sure you can bypass it.

### Bootstrap

Bootstrap install software and do the basic configuration on target machine, the script `bootstrap.sh` implements it.

You need `root` privilege to do some task, so please make sure to run it as `root` user.

```
$ CLOUD_TO_USE="aliyun" ./bootstrap.sh -e 'ansible_user=root' -k
```

`bootstrap.sh ` prepare a host, which contains tasks like build customized software, update system repository, etc.

### `prepare_user.sh`

```
$ CLOUD_TO_USE="aliyun" ./prepare_user.sh --extra-vars="username=dantin" -e 'ansible_user=root' -k
```

### `prepare_nodes.sh`

```
$ CLOUD_TO_USE="aliyun" ./prepare_nodes.sh
```

### `configure_nodes.sh`

```
$ CLOUD_TO_USE="aliyun" ./configure_nodes.sh
```
