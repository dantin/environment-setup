# Environment Setup

Ansible playbooks that setup Linux box.

## Detail Tasks

Detail Tasks describe each playbook's job.

### Bootstrap

Bootstrap prepare a host, which contains tasks like build customized software, update system repository, etc.

As some work need `root` privilege, it should be run as `root` user.

```
$ CLOUD_TO_USE="static" ./bootstrap.sh -e 'ansible_user=root' -k
```

### User Creation

```
$ CLOUD_TO_USE="aliyun" ./prepare_user.sh --extra-vars="username=dantin" -e 'ansible_user=root' -k
```
