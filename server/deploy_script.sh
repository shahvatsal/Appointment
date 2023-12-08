#!/bin/bash

# figure out how to copy the code into your ec2 instance

# Ensure script fails on error
set -e

# Navigate to the directory where your application is located
# cd /Users/sim/Downloads/AppointDoc-main  

# when you push to circle ci the above path wont work because the path is for your

# Pull the latest code from your repository
# (This step assumes that your code is already cloned in the directory)
git pull origin master

# Install dependencies (if required)
# For example, for a Node.js application:
npm install

# Build your application (if required)
# For example, for a Node.js application:
npm run start

# Restart your application
# This will depend on how your app is run. For instance, using PM2 for a Node.js app:
# pm2 restart appointdoctor
