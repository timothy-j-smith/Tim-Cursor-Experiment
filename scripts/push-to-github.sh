#!/bin/bash
# One-step script to create Tim-Cursor-Experiment repo and push your work.
# You will be asked for your GitHub token once.

set -e
cd "/Users/timothy/Library/Mobile Documents/com~apple~CloudDocs/Cursor/Tim Cursor Experiment"

echo ""
echo "=== Tim Cursor Experiment — Push to GitHub ==="
echo ""
echo "You will need your GitHub Personal Access Token (no expiration)."
echo "If you don't have it: https://github.com/settings/tokens"
echo ""
read -s -p "Paste your GitHub token (it will not be shown): " TOKEN
echo ""
echo ""

if [ -z "$TOKEN" ]; then
  echo "No token entered. Exiting."
  exit 1
fi

echo "Creating repository on GitHub..."
RESPONSE=$(curl -s -w "\n%{http_code}" -X POST \
  -H "Authorization: token $TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/user/repos \
  -d '{"name":"Tim-Cursor-Experiment","description":"Fiction writing guides, MCP reports, Compass encyclopedias","private":false}')

HTTP_CODE=$(echo "$RESPONSE" | tail -n1)
BODY=$(echo "$RESPONSE" | sed '$d')

if [ "$HTTP_CODE" = "201" ]; then
  echo "Repository created successfully."
elif [ "$HTTP_CODE" = "422" ]; then
  echo "Repository may already exist. Continuing to push..."
else
  echo "Unexpected response (HTTP $HTTP_CODE). Check your token and try again."
  echo "$BODY" | head -5
  exit 1
fi

echo "Pushing to GitHub..."
git push https://timothy-j-smith:$TOKEN@github.com/timothy-j-smith/Tim-Cursor-Experiment.git main

echo ""
echo "Done! Your work is now on GitHub:"
echo "https://github.com/timothy-j-smith/Tim-Cursor-Experiment"
echo ""
