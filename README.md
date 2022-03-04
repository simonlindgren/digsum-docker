### Digsum Datascience Docker Container

Created by Simon Lindgren.

This container can be built by running the following command in the same directory as the provided `Dockerfile`.

```
sudo docker build --rm -t digsum-docker .
```

Once built, run the container with the command:

```
docker run -p 8888:8888 --mount type=bind, source=/path/to/local/working_dir ,target=/home/jovyan/working_dir digsum-docker
```

Obviously `docker` (and also `docker-compose`) must be installed on the machine where the container is to be run.

----

**v 0.1.0**: Base image drawn from `jupyter/datascience-notebook` on DockerHub. Includes `python`, `r` and `julia`.
**v 0.1.1**: Install `nltk` (plus content), `spacy` (plus content), and `networkx`.

