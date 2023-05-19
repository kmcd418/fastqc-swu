FROM public.ecr.aws/docker/library/python:3.10-slim

ENV PYTHONUNBUFFERED=TRUE

# install gcc
RUN apt-get update \
    && apt-get install -y gcc git curl unzip \
    && apt-get clean \
    && apt-get install -y default-jre

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
	./aws/install

# install python dependencies
RUN pip install --no-cache --upgrade \
    sagemaker-training==4.4.5

COPY requirements.txt .
RUN pip install --no-cache -r requirements.txt
