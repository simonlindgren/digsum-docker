# VERSION: 0.1.5
# DESCRIPTION: DIGSUM Datascience Docker Container
# FULL DESCRIPTION: https://github.com/simonlindgren/digsum-docker
# BUILD: sudo docker build --rm -t digsum-docker .

# Use this container from dockerhub as our base image
FROM jupyter/datascience-notebook

# Update setup stuff
RUN pip install -U pip setuptools wheel

# Install python packages 
RUN pip install -U nltk spacy networkx twarc

# Install NLTK content
RUN python -m nltk.downloader stopwords

# Install spacy content
RUN python -m spacy download en_core_web_sm

# Install Jupyter themes
RUN pip install jupyterlab_darkside_ui jupyterlab_legos_ui jupyterlab-simpledark jupyterlab_materialdarker theme-darcula jupyterlab-horizon-theme bertopic
