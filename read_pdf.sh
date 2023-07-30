#!/bin/bash

# Check if the pdftotext command is available
if ! command -v pdftotext &> /dev/null; then
    echo "pdftotext command not found. Please install it first."
    exit 1
fi

# Check if the user provided a PDF file path as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <path-to-pdf-file>"
    exit 1
fi

# Get the PDF file path from the first argument
pdf_file="$1"

# Check if the file exists
if [ ! -f "$pdf_file" ]; then
    echo "Error: File not found: $pdf_file"
    exit 1
fi

# Use pdftotext to extract the content and store it in a text file
output_file="${pdf_file%.pdf}.txt"
pdftotext "$pdf_file" "$output_file"

# Check if pdftotext successfully converted the content
if [ $? -eq 0 ]; then
    echo "Content of PDF file has been extracted and saved to $output_file"
else
    echo "Error: Failed to extract content from the PDF file."
fi
