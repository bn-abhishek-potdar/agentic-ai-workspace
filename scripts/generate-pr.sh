#!/bin/bash

echo "📦 Staging changes..."
git add .

echo "📊 Capturing diff..."
git diff --staged > diff.txt

echo "-----------------------------------"
echo "👉 Copy below diff into Copilot:"
echo "-----------------------------------"
cat diff.txt
echo "-----------------------------------"

echo "⚠️ Paste Copilot JSON output below:"
read -r JSON

echo "$JSON" > pr.json

echo "✅ PR data saved to pr.json"