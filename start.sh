#!/bin/bash

# Ensure scrapyd directory structure is initialized
mkdir -p /var/lib/scrapyd/eggs
mkdir -p /var/lib/scrapyd/logs
mkdir -p /var/lib/scrapyd/items
mkdir -p /var/lib/scrapyd/dbs

# Copy config file to directory if no config found
mkdir -p /home/scrapydweb/projects
cp -n /usr/local/scrapydweb_settings_v10.py /home/scrapydweb/scrapydweb_settings_v10.py
chmod -R 777 /home/scrapydweb
rm -f /home/scrapydweb/twistd.pid

scrapyd &
sleep 2
scrapydweb
