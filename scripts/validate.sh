#\!/bin/bash
echo "Running deploy validation..."
echo "Validation started at $(date)"
if [ -f package.json ]; then
  echo "package.json found — deployment OK"
  exit 0
else
  echo "package.json missing"
  exit 1
fi
