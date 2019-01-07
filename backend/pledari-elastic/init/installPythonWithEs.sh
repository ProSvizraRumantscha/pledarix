#!/bin/bash
yum -y --enablerepo=extras install epel-release
yum -y install python36
python3.6 -m ensurepip
pip3 install elasticsearch
