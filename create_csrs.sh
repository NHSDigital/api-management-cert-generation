#!/bin/bash

set -euo pipefail

mkdir -p csrs
mkdir -p keys

openssl req -new -newkey rsa:4096 -nodes -sha256 -keyout keys/internal-dev.api.service.nhs.uk.key -out csrs/internal-dev.api.service.nhs.uk.csr -config confs/internal.conf -extensions v3_req
openssl req -new -newkey rsa:4096 -nodes -sha256 -keyout keys/dev.api.service.nhs.uk.key -out csrs/dev.api.service.nhs.uk.csr -config confs/dev.conf -extensions v3_req
openssl req -new -newkey rsa:4096 -nodes -sha256 -keyout keys/int.api.service.nhs.uk.key -out csrs/int.api.service.nhs.uk.csr -config confs/int.conf -extensions v3_req
openssl req -new -newkey rsa:4096 -nodes -sha256 -keyout keys/api.service.nhs.uk.key -out csrs/api.service.nhs.uk.csr -config confs/prod.conf -extensions v3_req
