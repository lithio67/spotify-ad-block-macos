#!/bin/bash

# Define the hosts file path
HOSTS_FILE="/etc/hosts"

# Check if the entry already exists
if ! grep -q "ads.spotify.com" "$HOSTS_FILE"; then
    # Append the entry to the hosts file
    echo "127.0.0.1 ads.spotify.com" | sudo tee -a "$HOSTS_FILE" > /dev/null
    echo "Entry added to hosts file."
else
    echo "Entry already exists in hosts file."
fi

