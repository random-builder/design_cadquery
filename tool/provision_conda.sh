#!/usr/bin/env bash

#
# generate project python environment
#

base_dir=$( cd $( dirname "$0" )/.. && pwd )

cd $base_dir

pwd

echo $PATH

#
#
#

eval "$(conda shell.bash hook)"

#conda env remove -y -n cq_tester
#conda create     -y -n cq_tester python=3.7

conda activate         cq_tester

conda install -y -c conda-forge \
	conda-build \
	conda-verify \
	pythonocc-core=7.4.0

conda config --show
