FROM jupyter/scipy-notebook:137a295ff71b

USER root

USER $NB_USER

COPY ./requirements.txt .
RUN pip install -r requirements.txt
