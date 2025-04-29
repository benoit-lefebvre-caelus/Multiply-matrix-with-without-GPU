#!/bin/bash

apt update
apt install -y python3-venv python3-pip python3-dev nvtop virtualenv nano
virtualenv venv
source venv/bin/activate
pip install tensorflow
pip install tensorflow[and-cuda] #ONLY FOR GPU
