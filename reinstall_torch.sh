#!/bin/bash

set -e

# Rebuild cuda kernel for your GPU.
pip3 uninstall torch torchvision torchaudio -y
pip3 install torch torchvision torchaudio