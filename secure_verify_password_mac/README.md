# Can I get his MAC address
Yes, it is possible to include the MAC address of the machine in the timer.txt file when logging the attempted break-in. To achieve this, you can use the ifconfig command (or ip command) to retrieve the MAC address and include it in the log message.

Here's the updated bash script with the MAC address included in the timer.txt log.

When the script logs a break-in attempt to timer.txt, it will include the timestamp and the MAC address of the machine from which the attempt was made. This information can be useful for identifying unauthorized access attempts.