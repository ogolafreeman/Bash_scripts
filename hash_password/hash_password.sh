#!/bin/bash

read -s -p "Enter the password to hash: " password
echo

# Hash the password using SHA-256
hashed_password=$(echo -n "$password" | sha256sum | cut -d ' ' -f1)

echo "Hashed password: $hashed_password"
