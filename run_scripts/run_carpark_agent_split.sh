#!/bin/bash

# cd to directory that this script is in and then up a level
script_name=$0
script_full_path=$(dirname "$0")
cd "$script_full_path"


# Activate the evirtual environment
source ../venv/bin/activate

# Modify this line with your own command line arguments
nice python3 run_detection_only.py &
python3 run_carparkagent.py -ps 120 -fn set_friendly_name -dd -lat 52.235063 -lon 0.154021

pkill -KILL 'python3'

deactivate