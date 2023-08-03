# Bash_scripts
This project contains bash files and idea. Any file in this repository is considered for education purposes only, whatever you do with the files it will be up to you.

# Note
- All the files have been created and tetsed using Kali Linux 2023.2a, released on 6th June 2023.
- Some of the files provided have been done by the aid of CHAT GPT this was done to test the power of AI

# File 1 Name: detect_os.sh
This script displays the type of linux you are using and the verion.

# File 2 Name: Read file content using shell

- To read the content of a PDF file in a bash script, you can use the pdftotext command-line tool. This tool is available on most Linux distributions and can be used to convert PDF files to plain text files. If you don't have it installed, you can usually install it through your package manager.

- Use this command to run the file ./read_pdf.sh path/to/your/file.pdf

- Replace path/to/your/file.pdf with the actual path to the PDF file you want to read. The script will use pdftotext to convert the PDF to plain text and save the content in a file with the same name as the PDF but with a .txt extension. The text file will be created in the same directory as the PDF file.

# Connect to XAMMP Remotely using Bash script

- To remotely connect to your XAMPP server, you can use SSH (Secure Shell), which is a secure method for accessing and managing remote servers.

- Save the script in a file, e.g., remote_xampp.sh. Before running the script, make sure you have SSH access to your XAMPP server, and you know the correct SSH port, server IP, and your username. Also, ensure that you replace /opt/lampp in the script with the correct path to your XAMPP installation directory on the remote server.

- Once the script is saved, you can give it executable permissions using the following command:
    chmod +x remote_xampp.sh

- To run the script and execute a specific function, uncomment the function call you want to use and comment out the others. For example, if you want to restart the XAMPP server remotely, keep the restart_xampp_server function call uncommented and comment out the other function call(s).
# Note
- Please exercise caution while running scripts that connect to remote servers. Always double-check the commands and make sure you have the necessary permissions to perform the intended operations on the server. Improper use of remote scripts can have unintended consequences on your server's configuration and data.
