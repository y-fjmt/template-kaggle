# template-kaggle
Template repository for Kaggle.

## Requirements
- Visual Studio Code
- Devcontainer Extention
- Docker Engine

if you need GPU environment, **NVIDIA Container Toolkit** must be installed.

## Set Up
1. Go to `.devcontainer`, Copy `devcontainer.json.xxx` and rename it `devcontainer.json`.
1. Run "Reopen in container" in VScode
1. (Optional) To Use Kaggle API, put API key in `.config` and run `./init_api.sh` after `chmod +x init_api.sh`.

> [!caution]
> Do not upload competition datasets to GitHub. (Append the path to the dataset to `.gitignore`.)