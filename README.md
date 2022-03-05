## Digsum Datascience Docker Container

Created by Simon Lindgren.

### Installation

1. Check that Docker is installed: `$ docker -v`
2. Clone the image: `git clone https://github.com/simonlindgren/digsum-docker`
3. Go to image dir: `cd digsum-docker`
4. Build the container based on the Dockerfile: `sudo docker build --rm -t digsum-docker .`

##### If 1-4 has been done on the local machine:

5. Run the container, and mount a working directory: `docker run -p 8888:8888 --mount type=bind,source=/path/to/local/working_dir,target=/home/jovyan/working_dir digsum-docker`

6. Access JupyterLab (with Python, R, Julia, and relevant packages) in a browser at `http://127.0.0.1:8888/lab?token=<token>``


----

**v 0.1.0**: Base image drawn from `jupyter/datascience-notebook` on DockerHub. Includes `jupyterlab`, `python`, `r` and `julia`.

**v 0.1.1**: Install `nltk` (plus content), `spacy` (plus content), and `networkx`.

**v 0.1.2**: Install the `jupyterlab_darkside_ui` theme. Must be manually activated (_Themes_ menu) after container launch.
