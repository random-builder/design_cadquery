#!/usr/bin/env bash

#
# provision project environment
#

base_dir=$( cd $( dirname "$0" )/.. && pwd )
cd $base_dir
echo "### project root: $(pwd)"

eval "$(conda shell.bash hook)"

conda env remove -n cq_arkon
conda env create -n cq_arkon -f tool/cq_arkon.env.yml
