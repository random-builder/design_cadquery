#!/usr/bin/env bash

cat build-all.txt | grep "undefined symbol:" > build-undef.txt
