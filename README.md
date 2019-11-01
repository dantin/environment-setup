# Environment Setup

This `environment-setup` is a project which is aimed to setup a Linux Box automatically.

This repository contains:

1. The host inventory of different clouds or workspace.
2. Ansible playbooks.
3. The scripts that make your life easy.

## Table of Contents

- [Background](#background)
- [Install](#install)
- [Usage](#usage)
- [Maintainers](#maintainers)
- [Contributing](#contributing)
- [License](#license)

## Background

As a backend developer, I spend most of time working on Linux, as a result, I usually need to maintain simillar
software on those Linux boxes.

Inspired by the **DRY** priciple, I create this project as an assistant to help me setting those tools.

> DRY: Don't Repeat Yourself.

## Install

__Warning:__ If you want to give these Ansible Playbooks a try, you should first fork this repository, review
the code, and remove things you don't want or need. Don't blindly use my Ansible Playbooks unless you know what
that entails. Use at your own risk!

### Using Git and bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Documents/code/devops/environment-setup`.)
The bootstrapper script will pull in the latest version.

    git clone https://github.com/dantin/environment-setup.git
    cd environment-setup
    pip install -r requirements.txt

## Usage

This is only a documentation page. You can find out more on [specification](docs/SPEC.md).

## Related Efforts

- [Ansible](https://github.com/ansible/ansible) - A radically IT automation system. More information on [the Ansible website](https://ansible.com/).

## Maintainers

[@dantin](https://github.com/dantin)

## Contributing

Suggestions and improvements welcome!

Free free to [Open an issue](https://github.com/dantin/environment-setup/issues/new) or submit PRs.

## License

[BSD 3 Clause](LICENSE) © David Ding
