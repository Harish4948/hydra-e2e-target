#!/bin/bash
echo "Running deploy validation..."
if [ -f package.json ]; then
  echo "package.json found"
  if ! node -e "JSON.parse(require('fs').readFileSync('package.json', 'utf8'))" 2>/dev/null; then
    echo "package.json is invalid JSON"
    exit 1
  fi
  echo "package.json is valid JSON"
  exit 0
else
  echo "package.json missing"
  exit 1
fi
