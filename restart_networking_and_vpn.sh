#!/bin/bash

echo "Disconnecting from Windscribe..."
windscribe disconnect
echo "\"Restarting\" services..."
sudo systemctl stop windscribe.service network-online.target NetworkManager
sudo systemctl start windscribe.service network-online.target NetworkManager
echo "Connecting to Windscribe (BBQ)..."
windscribe connect bbq

