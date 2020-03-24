# API Management Cert Generation

## Prerequesites
* bash
* openssl cli


## What is this for?
This is for generating certs for the NHS Digital API Management Platform. You can find more detailed instructions on [confluence](https://confluence.digital.nhs.uk/display/APM/How+to+generate+keys+and+certificate+signing+requests) (requires an NHS Digital Confluence Account).


## How to use this script
### 1. Generate CSRs
Run `create_csrs.sh` to generate keys into `keys/` and CSRs into `csrs/` to send to a trusted CA.

## How to check your work
To analyze a CSR you can use `openssl req -in CSR_PATH -text -noout`.

Alternatively if your system supports it, double-click on a CSR to view the same info in a more friendly format.
