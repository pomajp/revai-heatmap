#!/bin/bash
# Quick script to update Revenue AI heatmap data

echo "🔄 Updating Revenue AI Heatmap Data..."

# Update the data
python ../update-revai-data.py ../june-10-slack-fix.csv revai-data.json

# Commit and push
git add revai-data.json
git commit -m "Update RevAI data - $(date +%Y-%m-%d)"
git push

echo "✅ Data updated and pushed to GitHub!"
echo "🌐 Changes will be live at https://pomajp.github.io/revai-heatmap/ in a few minutes" 