#!/bin/bash

# Replace the following variables with your server information
SERVER_IP="your_server_ip"
SERVER_PORT="your_ssh_port"
USERNAME="your_username"

# Function to execute commands on the remote server
function execute_remote_command() {
    ssh -p "$SERVER_PORT" "$USERNAME@$SERVER_IP" "$@"
}

# Example: Restart the XAMPP server remotely
function restart_xampp_server() {
    echo "Restarting XAMPP server remotely..."
    execute_remote_command "/opt/lampp/lampp restart"  # Replace the path with your XAMPP installation directory
    echo "XAMPP server restarted!"
}

# Example: Check XAMPP server status remotely
function check_xampp_status() {
    echo "Checking XAMPP server status remotely..."
    execute_remote_command "/opt/lampp/lampp status"  # Replace the path with your XAMPP installation directory
}

# Call the functions here as per your requirement
# restart_xampp_server
# check_xampp_status
