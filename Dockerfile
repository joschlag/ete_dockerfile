FROM continuumio/miniconda3:26.5.3-1

ENV PATH /opt/conda/bin:$PATH

RUN conda config --append channels bioconda && \
	conda config --append channels conda-forge && \
	conda config --append channels anaconda && \
	conda install -c bioconda ete3=3.1.3 && \
	conda clean -a -y

CMD ["ete3"]
