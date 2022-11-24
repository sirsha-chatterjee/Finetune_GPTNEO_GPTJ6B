#!/bin/bash
#general requirements
#conda install pytorch torchvision torchaudio cudatoolkit=11.1 -c pytorch -c nvidia -y
pip install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio===0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
pip install datasets==1.16.1
pip install transformers==4.14.1
#need to drastically lower requirements
git clone https://github.com/microsoft/DeepSpeed -b v0.5.8
cd DeepSpeed
DS_BUILD_OPS=1 pip install .
ds_report
