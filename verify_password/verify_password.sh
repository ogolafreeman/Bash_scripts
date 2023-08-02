#!/bin/bash

# Read the hashed password from password.txt
hashed_password=$(cat password.txt)

# Prompt the user to enter the password
read -s -p "Enter the password: " entered_password
echo

# Hash the entered password using SHA-256
hashed_entered_password=$(echo -n "$entered_password" | sha256sum | cut -d ' ' -f1)

# Clear the entered_password variable from memory
unset entered_password

# Compare the hashes and output the result
if [[ "$hashed_password" == "$hashed_entered_password" ]]; then
    echo "Success! Password is correct."
else
    echo "Error: Incorrect password."
fi
