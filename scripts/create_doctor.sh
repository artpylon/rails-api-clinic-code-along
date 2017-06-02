curl --include --request POST http://localhost:4741/doctors \
  --header "Content-Type: application/json" \
  --data '{
    "doctor": {
      "given_name": "Example Name",
      "family_name": "last name",
      "specialty": "alive",
      "gender": "m"
    }
  }'
