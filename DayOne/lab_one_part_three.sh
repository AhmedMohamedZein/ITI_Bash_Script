#!/bin/bash

# Adding this script to the cron {deomon}

uptime | awk -F',' '{print $3 $4 $5}' >> /var/log/system-load


