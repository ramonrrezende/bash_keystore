# Bash Keystore

Bash Keystore is a simple bash-based password manager. Its main purpose is to store encrypted passwords in text files. By default all the passwords are stored in 'passswords.txt'.

# Dependencies
- openssl: Used for encryption
- xclip: Used for copy data to clipboard

# Scripts
- `add.sh`: Adds a new password
- `dec.sh`: List passwords on screen(supports regex filter as argument)
    - Example: `./dec ^test` list all passwords with identifier beginning with _test_
- `gen_random.sh`: Generate a new random password by reading 32 bytes from `/dev/urandom` and encoding it with base64
- `keys.sh`: List password identifier keys(supports regex filter as argument)
- `get.sh`: Copy password to clipboard. Requires the exact identifier key as argument
    - Example `./get password_id` copy the password with identifiew _password_id_ to clipboard