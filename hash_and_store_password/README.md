# Bash script that hashes a password, stores the hashed password in a file 
Here's a bash script that hashes a password, stores the hashed password in a file called password.txt, and then clears the password variable from memory to enhance security.

The script will prompt you to enter the password, and after you press Enter, it will hash the password using SHA-256, save the hashed value in password.txt, and then clear the password variable from memory.

Please ensure that you handle the password.txt file securely since it contains the hashed password. Additionally, remember that this is a simple demonstration and should not be used for production or secure password storage. In real-world scenarios, consider using dedicated password hashing libraries and techniques to handle password security properly.