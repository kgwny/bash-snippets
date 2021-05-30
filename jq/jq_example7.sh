#!/bin/bash

# jsonの整形
echo '{"items":[{"item_id":1,"name":"すてきな雑貨","price":2500},{"item_id":2,"name":"格好いい置物","price":4500}]}' \
| jq .

# {
#   "items": [
#     {
#       "item_id": 1,
#       "name": "すてきな雑貨",
#       "price": 2500
#     },
#     {
#       "item_id": 2,
#       "name": "格好いい置物",
#       "price": 4500
#     }
#   ]
# }
