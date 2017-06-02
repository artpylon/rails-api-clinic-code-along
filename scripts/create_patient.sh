curl --include --request POST http://localhost:4741/patients \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Example Name",
      "born_on": "1999-01-01",
      "diagnosis": "alive"
    }
  }'
