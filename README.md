# appstizer

appstizer is a hobby project to bring various web applications together in a
local network. One can further define some webhooks to thightly integrate these
applications.

## Install

You should first install
[Docker](https://docs.docker.com/install/linux/docker-ce/binaries/#install-static-binaries)
and [Docker Compose](https://docs.docker.com/compose/install/#prerequisites)
for Linux. Downloading docker binaries makes it possible to install docker to
an offline machine. In that case you might want to start `dockerd` from your
`/etc/rc.local` if you don't want to mess up with `systemd` to automatically
start it when the machine boots.

Get appstizer with

```
git clone https://github.com/gokhanettin/appstizer.git
```

## Move Images

Save all images to a tar file.

```
docker save $(docker images -q) -o /path/to/save/dockerimages.tar
```

Load images from the tar file.

```
docker load -i /path/to/save/dockerimages.tar
```

## Run

```
cd appstizer
# Avoid Jenkins' permission errors
mkdir -p storage/jenkins
# Start apps
docker-compose up
# Ctrl-p Ctrl-q to detach
```
