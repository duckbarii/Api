#!/bin/bash

# Update & upgrade system
apt update && apt upgrade -y

apt install git -y           
pip install -U pip    
pip install -U -r requirements.txt --force-reinstall

# Start bot
echo "Starting Bot...."
python3 bot.py
