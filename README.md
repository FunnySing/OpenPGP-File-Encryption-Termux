After researching quite a bit from various sources about how you can encrypt your local files with most hardened way possible when it comes to OpenPGP symmetric encryption, I happened to write this bash script for myself.

## Few key points to remember:
1. Use a long passphrase. You can use a password manager for this.
2. Minimum character length of your passphrase should be 8. Else, OpenPGP won't accept it.

## Encryption (manual way):
``gpg -z 0 --cipher-algo AES256 --digest-algo SHA512 --s2k-mode 3 --s2k-count 65011712 --s2k-cipher-algo AES256 --s2k-digest-algo SHA512 --no-symkey-cache -c INPUT_FILE.ext``

## Decryption (manual way):
``gpg --no-symkey-cache -o DECRYPTED_OUTPUT_FILE.ext -d INPUT_FILE.ext.gpg``


## License
Apache License, Version 2.0
