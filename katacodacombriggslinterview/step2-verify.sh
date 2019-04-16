#!/bin/bash

EXITCODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000/info)

if [ $EXITCODE == "200" ];
then
  echo "done"
  exit 0
else
  echo "error"
  exit 1
fi

