curl "http://localhost:4741/bookclub_members" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "bookclub_member": {
      "bookclub_id": "'"${BOOKID}"'",
      "title": "'"${TTILE}"'",
      "author": "'"${AUTHOR}"'"
    }
   }'

echo
