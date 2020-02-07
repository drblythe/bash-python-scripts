#!/bin/bash
sudo systemctl stop network-online.target
sudo systemctl stop NetworkManager
sudo systemctl stop windscribe.service
sudo systemctl start network-online.target
sudo systemctl start NetworkManager
sudo systemctl start windscribe.service
