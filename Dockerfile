FROM continuumio/miniconda3:latest

WORKDIR /root/

RUN apt-get update --fix-missing && apt-get -y install gcc g++ libsasl2-dev && \
    conda install -y numpy scipy scikit-learn boto3 sqlalchemy thrift && \
    pip install --upgrade pip && \
    pip install pandas-td pyhive thrift-sasl && \
    pip install git+https://github.com/takuti/PyHivemall.git

CMD ["/bin/sh"]
