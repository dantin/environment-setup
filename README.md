# Environment Setup

Ansible Playbooks that setup Linux Box automatically.

## Playbooks

Detail Tasks describe each playbook's job.

### `bootstrap.sh`

`bootstrap.sh ` prepare a host, which contains tasks like build customized software, update system repository, etc.

As some work need `root` privilege, it should be run as `root` user.

```
$ CLOUD_TO_USE="aliyun" ./bootstrap.sh -e 'ansible_user=root' -k
```

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
