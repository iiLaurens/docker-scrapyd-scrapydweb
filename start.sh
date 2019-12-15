#!/bin/bash

# Copy config file to directory if no config found
mkdir /home/scrapydweb/
cp -n /usr/local/scrapydweb_settings_v10.py /home/scrapydweb/scrapydweb_settings_v10.py

scrapyd &
scrapydweb