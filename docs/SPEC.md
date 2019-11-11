# Specification

_NOTE_: Some of the scripts are still under developing.

## Table of Contents

- [Machine List](#machine-list)
- [Scripts](#scripts)
  - [Boostrap](#bootstrap)
  - [Prepare](#prepare)
    - [tmux](#tmux)
    - [git](#git)
    - [cmake](#cmake)
    - [python3](#python3)
    - [pyenv](#pyenv)
    - [vim](#vim)
    - [zsh](#zsh)
    - [oh-my-zsh](#oh-my-zsh)
    - [docker-engine](#docker-engine)
    - [docker-compose](#docker-compose)
    - [jEnv](#jenv)
  - [Config](#config)
    - [vim](#vim)

## Machine List

You can edit machine list under `inventory` directory, uptill now, I have hosts on the following clouds:

- UCloud
- Aliyun

You can switch between clouds by using `CLOUD_TO_USE` environment variable.

## Bootstrap

The `bootstrap.sh` script sets up basic environment of a remote host, e.g. set yum repository to
[mirrors.aliyun.com](http://mirrors.aliyun.com/repo), enable EPEL repository, install and start NTP service,
besides this, is also configures global environment settings such as hostname, `LANG`, etc.

Usage:

    $ CLOUD_TO_USE=ucloud ./bootstrap.sh

_NOTE:_ Make sure the Ansible user has `root` or `sudo` privileges.

## Scripts

### Prepare

The `prepare.sh` script downloads and installs software automatically on remote host.

Usage:

    $ CLOUD_TO_USE=ucloud ./prepare.sh --tags=<software_name>

_NOTE:_ Before use, make sure the connection to the Internet is OK on your host.

#### tmux

Build requires `autoconf`, `automake` and `pkg-config`, and it depends on `libevent 2.x`, `ncurses`.

Install from source code:

    $ git clone https://github.com/tmux/tmux.git && cd tmux
    $ sh autogen.sh
    $ ./configure
    $ make
    $ sudo make install

More detail documentation is available on [code repository of tmux](https://github.com/tmux/tmux).

#### git

Build requires libraries such as: autotools, `curl`, `zlib`, `openssl`, `expat`, and `libiconv`.
On CentOS you need: `dh-autoreconf`, `curl-devel`, `expat-devel`, `gettext-devel`, `openssl-devel`,
`perl-devel`, and `zlib-devel`.

Install from source code:

    $ make configure
    $ ./configure --prefix=/usr/local
    $ make all
    $ sudo make install

More detail documantation is available on [code repository of git](https://github.com/git/git), or [git-scm.com](https://git-scm.com/).

#### cmake

Build requires `gcc` and `gcc-c++`.

Install from source code:

    $ ./bootstrap
    $ make
    $ sudo make install

More detail documentation is available on [code repository of cmake](https://github.com/Kitware/CMake).

#### python3

Build requires `gcc`, `gcc-c++`, `autoconf`, `make`, `gdb`, `libevent`, `libevent-devel`, `ncurses`, `ncurses-devel`,
`zlib`, `zlib-devel`, `readline`, `readline-devel`, `openssl`, `openssl-devel`, `gettext-devel`, `sqlite-devel`,
`expat-devel`, `curl-devel`, `bzip2-devel`, `libffi-devel` and `perl-ExtUtils-Embed`.

Install from source code:

    $ ./configure --enable-optimizations --enable-shared
    $ make -j8 build_all
    $ make -j8 altinstall
    $ cp libpython3.7* /usr/lib64
    $ ldconfig

More detail documentation is available on [documents of python](https://docs.python.org/3.8/using/unix.html).

#### pyenv

Install from script:

    $ curl https://pyenv.run | bash
    $ curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

More detail documentation is available on [documents of pyenv-installer](https://github.com/pyenv/pyenv-installer)

#### vim

_NOTE:_ If you want enable `python3`, you should install `python3` first.

Install from source code:

    $ ./configure --prefix=/usr/local
      --with-features=huge
      --enable-cscope
      --enable-multibyte
      --enable-perlinterp
      --enable-pythoninterp
      --with-python-command=python
      --enable-python3interp
      --with-python3-command=python3.7
      --enable-rubyinterp
      --with-ruby-command=/usr/bin/ruby
      --enable-luainterp
      --with-lua-prefix=/usr
      --with-compiledby="David Ding"
    $ make
    $ sudo make install

More detail documantation is available on [code repository of vim](https://github.com/vim/vim).

#### zsh

Install from yum repository:

    $ sudo yum install -y zsh

#### oh my zsh

Install from script:

    $ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

More detail documentation about config is on [oh-my-zsh](https://ohmyz.sh/).

#### Docker Compose

Install from binary:

    $ curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
    $ chmod +x /usr/local/bin/docker-compose

Installation documentation is available on [code repository of Compose](https://github.com/docker/compose).

> If you're a Mac or Windows user, the best way to install Compose and keep it up-to-date is Docker Desktop for Mac and Windows.

#### Docker Engine

Install from Docker Official repository:

    $ sudo yum remove docker \
                docker-client \
                docker-client-latest \
                docker-common \
                docker-latest \
                docker-latest-logrotate \
                docker-logrotate \
                docker-engine
    $ sudo yum install -y yum-utils \
                device-mapper-persistent-data \
                lvm2
    $ sudo yum-config-manager \
                --add-repo \
                https://download.docker.com/linux/centos/docker-ce.repo
    $ sudo yum install docker-ce docker-ce-cli containerd.io
    $ sudo systemctl start docker

Installation documentation is available on [Docker Official website](https://docs.docker.com/install/linux/docker-ce/centos/).

#### jEnv

Install from source code:

    $ git clone https://github.com/jenv/jenv.git ~/.jenv
    $ brew install jenv  # using Homebrew on macOS

Config in Shell environment:

    # Shell: bash
    echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(jenv init -)"' >> ~/.bash_profile
    # Shell: zsh
    echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$(jenv init -)"' >> ~/.zshrc

Installation documentation is available on [jEnv github.com repository](https://github.com/jenv/jenv).

### Config

#### vim

Vim configuration use `vim-plug` as plug management tool.

More details are available on [vim-config](https://github.com/dantin/vim-config).
