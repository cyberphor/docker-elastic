#!/usr/bin/env bash

CERTS=(
    "/opt/elastalert/config/certs/ca.crt"
    "/opt/elastalert/config/certs/elastalert.crt"
    "/opt/elastalert/config/certs/elastalert.key"
)

for CERT in "${CERTS[@]}"; do
    if [ ! -f $CERT ]; then
        echo "File not found: $CERT"
        exit 1
    else
        echo "File found: $CERT"
    fi
done

# Create an Elasticsearch index for ElastAlert
# RUN elastalert-create-index --config elastalert.yml
# python -m elastalert.elastalert --config elastalert.yml