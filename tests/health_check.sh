#!/bin/bash

URL=${1:-"http://3.239.116.53:5000/"}

echo "Health checking..."

STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$STATUS_CODE" -eq 200 ]; then
  echo "SUCCESS! status code is $STATUS_CODE"
  exit 0
else
  echo "FAILED! status code is $STATUS_CODE"
  exit 1
fi


