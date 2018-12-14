# environment-setup

Ansible playbook that setup Linux box.


Create user

```
$ CLOUD_TO_USE="aliyun" ./prepare_user.sh --extra-vars="username=dantin" -e 'ansible_user=root' -k
```
