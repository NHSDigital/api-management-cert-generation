# API Management Cert Generation

## Prerequesites
* Python 3
* bash
* openssl cli

## How to use this
### 1. Generate some keys
Run `create_keys.sh` to generate some 256-bit Ed25519 keys into `keys/`.

### 2. Generate some configs
Run `python create_confs.py` to generate confs from the template into `confs/`.

### 3. Generate CSRs
Run `create_csrs.sh` to generate CSRs into `csrs/` to send to a trusted CA.

## How to check your work
To analyze a CSR you can use `openssl req -in CSR_PATH -text -noout`.
