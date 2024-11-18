#!/bin/bash

# Function to validate the URL format
validate_url() {
  if [[ $1 =~ ^(https?://)?([a-zA-Z0-9.-]+)(:[0-9]{1,5})?(/.*)?$ ]]; then
    echo "Valid URL format."
  else
    echo "Invalid URL format."
    exit 1
  fi
}

# Function to check if the URL is reachable
check_url_reachability() {
  response=$(curl -o /dev/null --silent --head --write-out '%{http_code}' "$1")
  
  if [[ "$response" -eq 200 ]]; then
    echo "URL is reachable (Status Code: 200)."
  else
    echo "URL is not reachable. Status Code: $response"
  fi
}

# Main script execution
if [[ -z $1 ]]; then
  echo "Usage: ./check_url_validity.sh <URL>"
  exit 1
fi

URL=$1

# Validate the URL format
validate_url "$URL"

# Check the URL reachability
check_url_reachability "$URL"

