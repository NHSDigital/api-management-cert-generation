#!/bin/bash

set -euo pipefail

mkdir -p keys

while read -r line;
do
    openssl genpkey -algorithm ED25519 > keys/$line.key
done < domains.txt
