## GoCD Agent with Docker CE Installed

This docker image install Docker CE on top of GoCD Agent image

[Docker Hub Repository](https://hub.docker.com/r/hpcsc/gocd-agent-dind/)

### Available tags

- `gocd-18.2.0-ubuntu-16.04-docker-17.12`
    - Ubuntu v16.04
    - GoCD Agent v18.2.0
    - Docker CE v17.12.0

*Note:* this image installs Docker inside a Docker container. It needs to be started with docker socket from host machine mounted as a volume, .e.g:

```
docker run -d -v /var/run/docker.sock:/var/run/docker.sock hpcsc/gocd-agent-dind:gocd-18.2.0-ubuntu-16.04-docker-17.12
```

For more details: [https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/](https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/)
