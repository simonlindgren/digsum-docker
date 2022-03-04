# VERSION: 0.1.2
# DESCRIPTION: DIGSUM Datascience Docker Container
# BUILD: sudo docker build --rm -t digsum-docker .

# Use this container from dockerhub as base image
FROM jupyter/datascience-notebook

# Install python packages 
RUN pip install nltk networkx spacy

# Install NLTK content
RUN python -m nltk.downloader all

# Install spacy content
RUN python -m spacy download en_core_web_sm

# Install Jupyter theme
RUN pip install jupyterlab_darkside_ui
