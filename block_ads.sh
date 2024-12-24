#!/bin/bash

# Define the hosts file path
HOSTS_FILE="/etc/hosts"

# Check if entry exists, add entry if not
if ! grep -q "ads.spotify.com" "$HOSTS_FILE"; then
    echo "127.0.0.1 ads.spotify.com" | sudo tee -a "$HOSTS_FILE" > /dev/null
    echo "Entry added to hosts file."
    sudo killall -HUP mDNSResponder
elif ! grep -q "ads-fa.spotify.com" "$HOSTS_FILE"; then
    echo "127.0.0.1 ads-fa.spotify.com" | sudo tee -a "$HOSTS_FILE" > /dev/null
    echo "Entry added to hosts file."
    sudo killall -HUP mDNSResponder
else
    echo "Entry already exists in hosts file."
fi

