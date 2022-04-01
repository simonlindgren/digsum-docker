# VERSION: 0.1.2
# DESCRIPTION: DIGSUM Datascience Docker Container
# FULL DESCRIPTION: https://github.com/simonlindgren/digsum-docker
# BUILD: sudo docker build --rm -t digsum-docker .

# Use this container from dockerhub as our base image
FROM jupyter/datascience-notebook

# Update setup stuff
RUN pip install -U pip setuptools wheel

# Install python packages 
RUN pip install -U nltk spacy networkx

# Install NLTK content
RUN python -m nltk.downloader all

# Install spacy content
RUN python -m spacy download en_core_web_sm

# Install Jupyter theme
RUN pip install jupyterlab_darkside_ui

# Also install Atom
RUN curl -L https://github.com/atom/atom/releases/download/${ATOM_VERSION}/atom-amd64.deb > /tmp/atom.deb && \
dpkg -i /tmp/atom.deb && \
rm -f /tmp/atom.deb

# Launch Atom
CMD ["/usr/bin/atom","-f","--no-sandbox"]
