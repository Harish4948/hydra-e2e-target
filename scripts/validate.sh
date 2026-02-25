#\!/bin/bash
# dependency check (routine)
echo "Running deploy validation..."
if [ -f package.json ]; then
  echo "package.json found"
  exit 0
else
  echo "package.json missing"
  exit 1
fi
