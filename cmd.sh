#!/bin/bash

if [[ -z $1 ]]; then
SYN=$1
else 
SYN=""
fi

if [[ -z $SYN ]]; then
echo "aws s3 sync .  s3://caseydeceramics.com/ .."
aws s3 sync  .  s3://caseydceramics.com/

else 
echo "skippign sync..."
fi
echo ".....sleeping 3"

sleep 3

echo "Cloudfront invalidation of website ..."

aws cloudfront create-invalidation --distribution-id E2VN0HE9WQCJQ8  --paths "/*"

echo "Done!"
