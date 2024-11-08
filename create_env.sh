#!/bin/bash

conda create -n RF2NA python==3.10.14

conda activate RF2NA

pip install numpy==1.26.4

conda install -y conda-forge::llvm-openmp

conda install -y -c bioconda blast csblast cd-hit infernal mafft hmmer hhsuite

# CUDA 11.7
#pip install torch==2.0.0 torchvision==0.15.1 torchaudio==2.0.1 torch_geometric==2.0.1
#conda install pytorch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 pytorch-cuda=11.7 -c pytorch -c nvidia
#CUDA 12.1
pip install torch==2.2.1 torchvision torchaudio torchdata torch_geometric

pip install pandas pydantic e3nn wandb pynvml git+https://github.com/NVIDIA/dllogger#egg=dllogger

conda install -c dglteam/label/th22_cu124 dgl

cd SE3Transformer

python setup.py install
