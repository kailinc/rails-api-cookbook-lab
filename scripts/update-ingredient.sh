curl --include --request PATCH http://localhost:4741/ingredients/$ID \
  --header "CONTENT-Type: application/json" \
  --data '{
    "ingredient": {
      "name" : "'"${NAME}"'",
      "unit" : "'"${UNIT}"'"
    }
  }'
