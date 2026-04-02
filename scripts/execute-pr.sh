#!/bin/bash

if [ ! -f pr.json ]; then
  echo "❌ pr.json not found"
  exit 1
fi

BRANCH=$(jq -r '.branch_name' pr.json)
COMMIT=$(jq -r '.commit_message' pr.json)
TITLE=$(jq -r '.pr_title' pr.json)
DESC=$(jq -r '.pr_description' pr.json)

echo "🌿 Creating branch: $BRANCH"
git checkout -b $BRANCH

echo "💾 Committing..."
git commit -m "$COMMIT"

echo "🚀 Pushing..."
git push origin $BRANCH

echo "🔀 Creating PR..."
gh pr create --title "$TITLE" --body "$DESC"

echo "✅ PR Created Successfully"