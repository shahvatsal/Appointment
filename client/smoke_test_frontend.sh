#!/bin/bash

# Shebang line to use bash shell

# URL of your S3 hosted front-end
FRONTEND_URL="http://appointmentsim.s3-website-us-east-1.amazonaws.com"

# Smoke test to check if the front-end main page is up and running
# Using curl to make a request and check the response
response=$(curl -o /dev/null -s -w "%{http_code}\n" "$FRONTEND_URL")

if [ "$response" == "200" ]; then
    echo "Smoke test passed: Front-end main page is up."
else
    echo "Smoke test failed: Front-end main page is not responding."
    exit 1
fi

# Add more tests as needed
