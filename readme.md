# URL Validity Checker Script

This script allows you to check the validity of one or more URLs by sending HTTP requests and analyzing the response codes. It's a useful tool for ensuring that the URLs in your system are reachable and returning the expected HTTP status codes.

## Features
- Check the status of a single URL or multiple URLs from a file.
- Supports `curl` to make HTTP requests.
- Handles HTTP status codes and classifies the URL as valid or invalid.
- Provides easy-to-read output in the terminal.

## Prerequisites
Ensure that you have the following installed on your system:
- **Bash**: A Unix shell that runs the script.
- **cURL**: Used to send HTTP requests.
  
To check if `cURL` is installed, run:
```bash
curl --version
```
## Usage
Clone or download the script: Download the check_url.sh script to your system.

Make the script executable: You need to give execute permissions to the script before using it. Run:
```bash
chmod +x check_url.sh
```
Run the script for a single URL: You can provide a URL directly when running the script:
```bash
./check_url.sh https://www.google.com
```
