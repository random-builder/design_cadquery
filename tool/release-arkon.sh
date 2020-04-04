#!/usr/bin/env bash

#
# perform conda package release
#

export PACKAGE_VERSION=2.0.0
export PYTHON_VERSION=3.6

base_dir=$( cd $( dirname "$0" )/.. && pwd )
cd $base_dir
echo "### project root: $(pwd)"

conda_base=$(conda info --base)
conda_build="$conda_base/conda-bld"

# remove all local packages
conda build purge-all

# build project artifacts
conda build tool/recipe-arkon \
    -c conda-forge \
    -c random-builder \

# upload project atrifacts
echo "### build dir: $conda_build"
find $conda_build -name *.tar.bz2 | while read file ; do
    echo "### upload file: $file"
    anaconda upload --force --user random-builder $file
done
