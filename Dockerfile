FROM jupyter/minimal-notebook:python-3.10.9

USER root
RUN apt-get update && apt-get install -y poppler-utils libgtk2.0-dev pkg-config python3-opencv

COPY ./requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

USER $NB_UID