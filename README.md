# Docker Tutorial

Let's try out Docker!

## First things first - Install Docker

### Ubuntu

```bash
$ sudo apt-get update
$ sudo apt-get install docker.io
$ sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker
# optional
$ sudo sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io
```

For the bleeding edge versions, see [the documentation](http://docs.docker.com/installation/ubuntulinux/#ubuntu-precise-1204-lts-64-bit).

### Mac 

```bash
brew install boot2docker docker
boot2docker init
boot2docker up
```

### Windows

Follow the steps described in [the documentation](http://docs.docker.com/installation/windows/).

## Further reads

- [Docker Dockumentation](http://docs.docker.com/)
- [How is Docker.io different from a normal virtual machine?](http://stackoverflow.com/questions/16047306/how-is-docker-io-different-from-a-normal-virtual-machine)
- [LXC - Linux Containers](https://linuxcontainers.org/)
- [Docker is the heroku killer](http://www.brightball.com/devops/docker-is-the-heroku-killer)
- [DockerHUB](https://registry.hub.docker.com/)