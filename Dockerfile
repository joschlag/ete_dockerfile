FROM continuumio/miniconda3:24.5.0-0

ENV PATH /opt/conda/bin:$PATH

RUN conda config --append channels bioconda && \
	conda config --append channels conda-forge && \
	conda config --append channels anaconda && \
	conda install -c bioconda ete3=3.1.3 pandas=3.0.5 && \
	conda clean -a -y

#CMD ["ete3"]
CMD ["python"]
