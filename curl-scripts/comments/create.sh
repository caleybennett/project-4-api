curl "http://localhost:4741/comments" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "comment": {
      "user_id": "'"${USER}"'",
      "book_id": "'"${BOOK}"'",
      "text": "'"${TEXT}"'",
    }
  }'

echo
