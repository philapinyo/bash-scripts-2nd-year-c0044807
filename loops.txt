This is the bash script for loops

#!usr/bin/env bash

# input for sender email
read -p "Enter your email here: " sender

# input for recipient email
read -p " Enter recipient email here: " recipient

# input for google app password
read -p "Enter your Google App pasword here: " gapp

# input for email subject
read -p "Enter the subject of the Email here: " sub

echo "Write your message here: "
cat > tempfile.txt
body=$(cat tempfile.txt)
