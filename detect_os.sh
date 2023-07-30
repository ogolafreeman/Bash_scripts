#!/bin/bash

# Function to print the detected OS
print_os() {
    echo "Detected operating system: $1"
    exit 0
}

# Check for specific files to identify the OS
if [ -f "/etc/os-release" ]; then
    source /etc/os-release
    if [ -n "$NAME" ]; then
        print_os "$NAME"
    fi
elif [ -f "/etc/lsb-release" ]; then
    source /etc/lsb-release
    if [ -n "$DISTRIB_DESCRIPTION" ]; then
        print_os "$DISTRIB_DESCRIPTION"
    fi
elif [ -f "/etc/redhat-release" ]; then
    print_os "Red Hat or CentOS"
elif [ -f "/etc/debian_version" ]; then
    print_os "Debian"
elif [ -f "/etc/SuSE-release" ]; then
    print_os "SUSE"
else
    print_os "Unknown (Not able to determine the OS)"
fi
