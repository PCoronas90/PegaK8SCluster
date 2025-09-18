#!/bin/bash
# Attendi che il registry sia pronto
sleep 10

echo ">>> Registering Avro schema for pega-events"

curl -X POST http://schema-registry:8081/subjects/pega-events-value/versions \
  -H "Content-Type: application/vnd.schemaregistry.v1+json" \
  -d @"schemas/customer-event.json"

echo ">>> Schema registered!"
