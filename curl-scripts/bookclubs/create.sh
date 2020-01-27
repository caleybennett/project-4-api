curl --include --request POST http://localhost:4741/bookclubs \
  --header "Content-Type: application/json" \
  --data '{
    "bookclub": {
      "name": "'"${NAME}"'"
    }
  }'

echo
