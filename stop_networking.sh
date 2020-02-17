#!/bin/bash
windscribe disconnect
sudo systemctl stop windscribe.service network.target NetworkManager
