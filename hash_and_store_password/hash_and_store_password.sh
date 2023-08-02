#!/bin/bash

read -s -p "Enter the password to hash: " password
echo

# Hash the password using SHA-256
hashed_password=$(echo -n "$password" | sha256sum | cut -d ' ' -f1)

# Store the hashed password in password.txt
echo "$hashed_password" > password.txt

# Clear the password variable from memory
unset password

echo "Password hashed and saved in password.txt"
