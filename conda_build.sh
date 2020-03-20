#!/usr/bin/env bash

eval "$(conda shell.bash hook)"

conda activate cq_tester

export PYTHON_VERSION=3.7
export PACKAGE_VERSION=TEST

conda config --show channels

conda build . -c dlr-sc --croot /tmp/cq_build

#conda build conda -c cadquery -c conda-forge --croot /tmp/cbld
