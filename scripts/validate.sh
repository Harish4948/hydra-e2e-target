#!/bin/bash
echo "Running deploy validation..."
if [ ! -f package.json ]; then
  echo "package.json missing"
  exit 1
fi
echo "package.json found"
if ! python3 -m json.tool package.json > /dev/null 2>&1; then
  echo "package.json is not valid JSON"
  exit 1
fi
echo "package.json is valid JSON"
