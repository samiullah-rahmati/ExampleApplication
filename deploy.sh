
#!/usr/bin/env bash

set -e

sudo apt update
sudo apt install -y nodejs npm

# Install PM2
sudo npm install -g pm2

# Stop any existing instance of the application
pm2 stop example_app || true

# Change directory to the application folder
cd ~/ExampleApplication

# Install application dependencies
npm install

# Start the application using PM2
pm2 start ./bin/www --name example_app

