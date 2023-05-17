FROM public.ecr.aws/docker/library/python:3.10-slim

ENV PYTHONUNBUFFERED=TRUE

# install gcc
RUN apt-get update \
    && apt-get install -y gcc git \
    && apt-get clean \
    && apt-get install -y default-jre
    

# install python dependencies
RUN pip install --no-cache --upgrade \
    sagemaker-training==4.4.5
