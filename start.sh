#!/bin/bash

# Copy config file to directory if no config found
mkdir -p /home/scrapydweb/projects
chmod -R 777 /home/scrapydweb
cp -n /usr/local/scrapydweb_settings_v10.py /home/scrapydweb/scrapydweb_settings_v10.py
rm -f /home/scrapydweb/twistd.pid

scrapyd &
sleep 2
scrapydweb
