FROM python:3.11-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        python3-dev \
        build-essential \
        libxml2-dev \
        libxslt1-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
        pandas \
        taxopy \
        numpy \
        lxml \
        six

CMD ["python"]

#FROM python:3.8-slim

#RUN apt-get update && \
#    apt-get install -y --no-install-recommends \
#        python3-dev \
#        build-essential \
#        libxml2-dev \
#        libxslt1-dev \
#        libgl1 && \
#    apt-get clean && rm -rf /var/lib/apt/lists/*

#RUN pip install --no-cache-dir ete3 numpy six lxml pandas==1.5.3

# Build ETE3 taxonomy database inside the container
#RUN python -c "from ete3 import NCBITaxa; NCBITaxa().update_taxonomy_database()"

#CMD ["python"]


#FROM continuumio/miniconda3:4.12.0
#FROM continuumio/miniconda3:24.5.0-0

#ENV PATH /opt/conda/bin:$PATH

#RUN conda install python=3.8 -y && \
#    conda config --append channels bioconda && \
#    conda config --append channels conda-forge && \
#    conda install -c bioconda ete3=3.1.3 pandas=1.5.3 -y && \
#    conda clean -a -y
    
#CMD ["ete3"]
#CMD ["python"]
