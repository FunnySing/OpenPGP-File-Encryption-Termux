#!/bin/bash

# Display menu options
echo "1) Encrypt"
echo "2) Decrypt"

# Prompt user for their choice
echo
read -p "Select your option: " choice

# Process the user's choice
if [ $choice -eq 1 ]; then
    read -p "Enter the file name to encrypt: " input_file
    echo
    gpg -z 0 --cipher-algo AES256 --digest-algo SHA512 --s2k-mode 3 --s2k-count 65011712 --s2k-cipher-algo AES256 --s2k-digest-algo SHA512 --no-symkey-cache -c ""$input_file""

elif [ $choice -eq 2 ]; then
    read -p "Enter the Encrypted file name to decrypt (e.g.: file.zip.gpg): " encrypted_file
    read -p "Enter the Output file name (e.g.: file.zip): " decrypted_file
    echo
    gpg --no-symkey-cache -o ""$decrypted_file"" -d ""$encrypted_file""

else
    echo "Invalid selection"
fi
