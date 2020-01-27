curl "http://localhost:4741/books" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "book": {
      "bookclub_id": "'"${BOOKCLUB}"'",
      "title": "'"${TITLE}"'",
      "author": "'"${AUTHOR}"'",
      "user_id": "'"${USER}"'"
    }
   }'

echo
