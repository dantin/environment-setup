# Environment Setup

Ansible Playbooks that setup Linux Box automatically.

## Playbooks

The following describes detail jobs of each playbook.

### Local Prepare

The script `local_prepare.sh` downloads third party code & binary from Internet.

```
$ ./local_prepare.sh
```

> Please make sure the connection to the Internet is OK before running the script.
> If you are under GFW, please also make sure you have solution to bypass it.

### Bootstrap

Bootstrap installs software and do the basic configuration, which is implemented by the script `bootstrap.sh`.

You need `root` privilege to do some task, so please make sure to run it as `root` user.

```
$ CLOUD_TO_USE="aliyun" ./bootstrap.sh -e 'ansible_user=root' -k
```

### Prepare User Account

TBD

```
$ CLOUD_TO_USE="aliyun" ./prepare_user.sh --extra-vars="username=dantin" -e 'ansible_user=root' -k
```

### `prepare_nodes.sh`

TBD

```
$ CLOUD_TO_USE="aliyun" ./prepare_nodes.sh
```

### `configure_nodes.sh`

TBD

```
$ CLOUD_TO_USE="aliyun" ./configure_nodes.sh
```
