curl --include --request POST http://localhost:4741/bookclubs \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "bookclub": {
      "name": "'"${NAME}"'"
    }
  }'

echo
