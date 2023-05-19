#!/usr/bin/env bash

# This is the master script for the SWU. 
# When you click "Reproducible Run" or "Reproduce", the code in this file will execute.

##################
# PREREQUISITES
##################
dvc pull

# delete results from previous run
rm -r results/*

##################
# LAUNCH CONTAINER JOB
##################
# python code/main.py
./code/FastQC/fastqc data/*.fastq -o results/

##################
# ADD RESULTS DATA VERSION TO S3
##################
dvc add results/
dvc push

##################
# ADD RESULTS DVC REFERENCE TO S3
##################
aws s3 cp ./results.dvc ${S3_OUTPUT}