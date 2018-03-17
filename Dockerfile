FROM continuumio/anaconda3

#Run an update
RUN apt-get update

#Create a user ds
RUN adduser -D -S -h /home/ds -s /bin/ash ds

#install neccessary packages
RUN pip install jupyterlab nltk boto3
RUN conda install spacy
RUN python -m spacy download 'en'
RUN python -m nltk.downloader -d /usr/local/share/nltk_data all


#Set Variables
ENV HOME=/home/ds
ENV SHELL=/bin/bash
ENV USER=ds
VOLUME /home/ds
WORKDIR /home/ds


#Startup the Jupyter notebook when this runs.
CMD jupyter lab --no-browser --port 7788 --ip='*' --allow-root --NotebookApp.iopub_data_rate_limit=10000000