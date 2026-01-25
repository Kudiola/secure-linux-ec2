#!/bin/bash

if ! systemctl is-active --quiet nginx; then
    echo "ALERT: Nginx is down!"
fi
