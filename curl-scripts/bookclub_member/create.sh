
curl "http://localhost:4741/bookclub_members" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "bookclub_member": {
      "bookclub_id": "'"${BOOKID}"'",
      "user_id": "'"${USERID}"'"
    }
   }'

echo
