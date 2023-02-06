FROM jupyter/scipy-notebook

USER root
RUN apt-get update && apt-get install -y openmpi-bin libopenmpi-dev
USER jovyan

RUN pip install mpi4py future
RUN cd work && git clone https://github.com/nullicle/GW_Workshop.git
ENV PYTHONPATH=/home/jovyan/work/GW_Workshop/packages
