#!/bin/bash

# folder setup
mkdir /opt/dotnet

# donwload and install
wget https://download.visualstudio.microsoft.com/download/pr/726e260e-ce94-46c3-a169-57b2ebf5433d/5fb2a00b04b3509a0a6db63e302523a8/dotnet-sdk-5.0.102-linux-arm.tar.gz
tar zxf /opt/dotnet/dotnet-sdk-5.0.102-linux-arm.tar.gz -C /opt/dotnet
rm /opt/dotnet/dotnet-sdk-5.0.102-linux-arm.tar.gz

# export to env
echo "export DOTNET_ROOT=/opt/dotnet" >> /etc/profile
echo "export PATH=$PATH:/opt/dotnet" >> /etc/profile

# export to current user env
export DOTNET_ROOT=/opt/dotnet
export PATH=$PATH:/opt/dotnet
