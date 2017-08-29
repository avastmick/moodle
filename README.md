# A Docker instance to run Moodle on a VPS

# TL;DR;

```bash
> git clone https://github.com/avastmick/moodle.git
> cd moodle
> sudo setup.sh
```

# Installation

This uses the [Bitnami Docker Moodle](https://github.com/bitnami/bitnami-docker-moodle) images.

## Configuration

There are defaults for all configuration.

Specific configuration is done via the ``.conf`` file in the project root.

TODO: Configure the SMTP server and local mailserver
TODO: Configure the domain settings
TODO: Security
TODO: HTTPS and certs

## Note on installations in China

### Installing Docker

Expected: usage of Ubuntu server.

The following configuration using the local mirrors for updates works.

Edit: ``sudo nano /etc/apt/sources.list``

```bash
deb http://cn.archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse
deb http://cn.archive.ubuntu.com/ubuntu/ xenial-updates main restricted universe multiverse
deb http://security.ubuntu.com/ubuntu xenial-security main restricted universe multiverse

# Docker
deb [arch=amd64] https://mirrors.aliyun.com/docker-ce/linux/ubuntu xenial edge
deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial edge
```

### Pulling images

Add the following /etc/docker/daemon.json to pull from the China registry mirror by default. (restart docker daemon)

```json
{
  "registry-mirrors": ["https://registry.docker-cn.com"]
}
```

