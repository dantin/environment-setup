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

The `prepare.sh` script downloads and installs software automatically on remote host.

Usage:

    $ CLOUD_TO_USE=ucloud ./prepare.sh --tags=<software_name>

_NOTE:_ Before use, make sure the connection to the Internet is OK on your host.

#### Supported Tools

##### docker-compose

Install from binary:

    $ curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
    $ chmod +x /usr/local/bin/docker-compose

Installation documentation is available on [code repository of Compose](https://github.com/docker/compose).

> If you're a Mac or Windows user, the best way to install Compose and keep it up-to-date is Docker Desktop for Mac and Windows.

##### tmux

Build requires `autoconf`, `automake` and `pkg-config`, and it depends on `libevent 2.x`, `ncurses`.

Install from source code:

    $ git clone https://github.com/tmux/tmux.git && cd tmux
    $ sh autogen.sh
    $ ./configure
    $ make
    $ sudo make install

More detail documentation is available on [code repository of tmux](https://github.com/tmux/tmux).

##### git

Build requires libraries such as: autotools, curl, zlib, openssl, expat, and libiconv. On CentOS you need: `dh-autoreconf`, `curl-devel`,
`expat-devel`, `gettext-devel`, `openssl-devel`, `perl-devel`, and `zlib-devel`.

Install from source code:

    $ make configure
    $ ./configure --prefix=/usr/local
    $ make all
    $ sudo make install

More detail documantation is available on [code repository of git](https://github.com/git/git), or [git-scm.com](https://git-scm.com/).

##### cmake

Build requires `gcc` and `gcc-c++`.

Install from source code:

    $ ./bootstrap
    $ make
    $ sudo make install

More detail documentation is available on [code repository of cmake](https://github.com/Kitware/CMake).

##### python3

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


##### vim

Install from source code:

    $ ./configure --prefix=/usr/local
      --with-features=huge
      --enable-cscope
      --enable-multibyte
      --enable-perlinterp
      --enable-pythoninterp
      --with-python-command=python
      --enable-rubyinterp
      --with-ruby-command=/usr/bin/ruby
      --enable-luainterp
      --with-lua-prefix=/usr
      --with-compiledby="David Ding"
    $ make
    $ sudo make install

More detail documantation is available on [code repository of vim](https://github.com/vim/vim).
