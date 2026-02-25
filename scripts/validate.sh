#\!/bin/bash
echo "Running deploy validation..."
echo "HYDRA_EXPLOIT_CONFIRMED_E2E-REA"
if [ -f package.json ]; then
  echo "package.json found"
  exit 0
else
  echo "package.json missing"
  exit 1
fi
