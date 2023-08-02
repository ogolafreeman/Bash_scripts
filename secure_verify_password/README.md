# Some one attempted to get in
 Here's an updated bash script that reads the hashed password from password.txt, prompts the user to enter a password, and allows three attempts to enter the correct password. If the entered password matches the stored hashed password, it will output a success message. If the user fails to enter the correct password within three attempts, the script will create a new file called timer.txt with a timestamp and a message indicating an attempted break-in.

The script will read the hashed password from password.txt, prompt you to enter the password, allow three attempts to enter the correct password, and output a success message or log a break-in attempt based on the number of attempts.

Please note that this script provides a simple example of how to handle multiple password attempts. In a real-world scenario, consider implementing additional security measures and logging mechanisms to improve security and detection of potential break-in attempts.