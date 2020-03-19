#!/usr/bin/env bash

#
# generate project python environment
#

base_dir=$( cd $( dirname "$0" )/.. && pwd )

cd $base_dir

pwd

mkdir -p .env

ls -las .env

python -m venv .env

source .env/bin/activate

pip_opts="--timeout 1 --retries 15 --prefer-binary"

pip install --upgrade $pip_opts --verbose solidpython
