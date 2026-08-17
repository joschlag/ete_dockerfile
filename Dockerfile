FROM continuumio/miniconda3:24.5.0-0

ENV PATH /opt/conda/bin:$PATH

RUN conda install python=3.10 -y && \
    conda config --append channels bioconda && \
    conda config --append channels conda-forge && \
    conda install -c bioconda ete3=3.1.3 pandas=3.0.5 -y && \
    conda clean -a -y

#CMD ["ete3"]
CMD ["python"]
