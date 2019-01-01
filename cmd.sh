#!/bin/bash

if [[ $1 == "sync" ]]; then
echo "$1"
SYN=sync
else 
SYN=index
fi

if [[ $SYN == "sync" ]]; then
echo "aws s3 sync .  s3://caseydeceramics.com/ .."
#aws s3 sync  .  s3://caseydceramics.com/

else 
echo "skippign sync..."
fi

if [[ $SYN == "index" ]]; then
echo "aws s3 cp index.html s3://caseydeceramics.com/index.thml"
aws s3 cp  index.html  s3://caseydceramics.com/index.html

else 
echo ".....updating index"
fi
echo ".....sleeping 3"

sleep 3

echo "Cloudfront invalidation of website ..."

#aws cloudfront create-invalidation --distribution-id E2VN0HE9WQCJQ8  --paths "/*"

echo "Done!"
