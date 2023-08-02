#!/bin/bash

# Read the hashed password from password.txt
hashed_password=$(cat password.txt)

# Set the maximum number of attempts
max_attempts=3
attempt=0

# Function to log attempted break-in
log_break_in_attempt() {
    # Get the MAC address of the machine
    mac_address=$(ifconfig | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}')
    echo "$(date '+%Y-%m-%d %H:%M:%S'): Someone attempted to break in from MAC address $mac_address." >> timer.txt
}

while [ $attempt -lt $max_attempts ]; do
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
        exit 0
    else
        attempt=$((attempt + 1))
        echo "Error: Incorrect password. Attempts remaining: $((max_attempts - attempt))"
    fi
done

# Log attempted break-in after 3 failed attempts
log_break_in_attempt
echo "Error: Maximum attempts reached. Check timer.txt for more information."
exit 1
