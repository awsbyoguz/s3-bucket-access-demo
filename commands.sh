#!/bin/bash

BUCKET_NAME=my-demo-bucket-$(date +%s)

# Create bucket
aws s3api create-bucket --bucket $BUCKET_NAME --region us-east-1

# Upload sample file
echo "Hello from Oguz!" > test.txt
aws s3 cp test.txt s3://$BUCKET_NAME/

# Make public
aws s3api put-object-acl --bucket $BUCKET_NAME --key test.txt --acl public-read

# Wait a bit and make it private again
sleep 5
aws s3api put-object-acl --bucket $BUCKET_NAME --key test.txt --acl private

echo "✅ Done. Bucket name: $BUCKET_NAME"
