#!/bin/bash

# folder setup
mkdir /opt/dotnet

# donwload and install
wget https://download.visualstudio.microsoft.com/download/pr/33c6e1e3-e81f-44e8-9de8-91934fba3c94/9105f95a9e37cda6bd0c33651be2b90a/dotnet-sdk-6.0.201-linux-arm64.tar.gz
tar zxf ./dotnet-sdk-6.0.201-linux-arm64.tar.gz -C /opt/dotnet
rm ./dotnet-sdk-6.0.201-linux-arm64.tar.gz

# export to env
echo "export DOTNET_ROOT=/opt/dotnet" >> /etc/profile
echo "export PATH=$PATH:/opt/dotnet" >> /etc/profile

# export to current user env
export DOTNET_ROOT=/opt/dotnet
export PATH=$PATH:/opt/dotnet
