### Digsum Datascience Docker Container

Created by Simon Lindgren.

This container can be built by running the following command in the same directory as the provided `Dockerfile`.

```
sudo docker build --rm -t digsum-docker .
```

Once built, run the container every time you want to use it with the command:

```
docker-compose up
```

Obviously `docker` (and also `docker-compose`) must be installed on the machine where the container is to be run.

**v 0.1.0**: Base image drawn from `cschranz/gpu-jupyter` on DockerHub.
