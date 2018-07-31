FROM continuumio/miniconda3:latest

WORKDIR /root/

RUN conda install -y numpy scipy scikit-learn boto3 && \
    pip install pandas-td && \
    pip install git+https://github.com/takuti/PyHivemall.git

CMD ["/bin/sh"]
