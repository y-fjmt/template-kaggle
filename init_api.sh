# !/bin/bash -e
# 
# Initialize kaggle API

script_dir=$(dirname "$0")

if [ ! -e "$script_dir/.config/kaggle.json" ]; then
  echo "Put API token in .config/kaggle.json"
  exit 1  
fi

mkdir -p /root/.config/kaggle
cat "$script_dir/.config/kaggle.json" > /root/.config/kaggle/kaggle.json

chmod 600 /root/.config/kaggle/kaggle.json

kaggle competitions list &> /dev/null
if [ $? -eq 0 ]; then
  echo "API successfully initialised."
else
  echo "Invalid API token."
  exit 1
fi