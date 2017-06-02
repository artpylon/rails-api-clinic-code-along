#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/patients"
ID=2
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \

echo

curl --include --request DELETE http://localhost:4741/patients/1
