#!/bin/bash

set -euo pipefail

mkdir -p csrs

while read -r line;
do
    openssl req -new -out csrs/$line.csr -key keys/$line.key -config confs/$line.conf
done < domains.txt
