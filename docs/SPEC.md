# Specification

_NOTE_: Some of the scripts are still under developing.

## Table of Contents

- [Supported Cloud](#supported-cloud)
- [Scripts](#scripts)
  - [Prepare](#prepare)

## Supported Cloud

Up till now, I have hosts on the following cloud:

- UCloud
- Aliyun

You can switch between them by using `CLOUD_TO_USE` environment variable.

## Scripts

### Prepare

The `prepare.sh` install the software automatically.

    CLOUD_TO_USE=ucloud ./prepare.sh

> Please make sure the connection to the Internet is OK on your host.
