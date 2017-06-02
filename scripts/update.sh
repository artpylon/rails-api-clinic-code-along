#!/bin/bash


curl --include --request PATCH http://localhost:4741/patients/1 \
  --header "Content-Type: application/json" \
  --data '{
	"patient": {
		"name": "UPDATE"
	}
}'
