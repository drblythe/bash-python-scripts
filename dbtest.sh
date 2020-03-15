#!/bin/bash
sudo systemctl start mariadb
echo "Starting mariadb on default port (localhost:3306)..."
wait
echo "Starting nodemon: Listening on localhost:3000..."
nodemon ~/Code/school/Database/mysql-node-express-api/code/server.js
