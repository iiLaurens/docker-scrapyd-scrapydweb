#!/bin/bash

# Copy config file to directory if no config found
mkdir -p /home/scrapydweb/projects
cp -n /usr/local/scrapydweb_settings_v10.py /home/scrapydweb/scrapydweb_settings_v10.py

scrapyd &
sleep 2
scrapydweb