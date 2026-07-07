#!/bin/bash

# Quick wins for badges that work immediately
export PATH="/c/Program Files/GitHub CLI:$PATH"

echo "🎯 Quick Badge Wins"
echo "=================="
echo ""

# 1. Heart On Your Sleeve - Add reactions
echo "1️⃣ Adding reactions for Heart On Your Sleeve..."
echo "Visit these links and add emoji reactions manually:"
echo ""
echo "   https://github.com/github/feedback/issues"
echo "   https://github.com/minuttt/github-badges-farm/issues"
echo ""
echo "   Click the emoji buttons and add: ❤️ 👍 🎉 😄 🚀"
echo "   Do this on at least 20 different issues/PRs"
echo ""
read -p "Press Enter after you've added reactions..."

# 2. GitHub Sponsor
echo ""
echo "2️⃣ GitHub Sponsor Badges (Get 2 badges instantly!)..."
echo ""
echo "   Visit: https://github.com/sponsors"
echo "   Pick any project or developer"
echo "   Sponsor for as little as $1/month"
echo "   ✅ Enable 'Public' to get both badges"
echo ""
read -p "Press Enter after you've sponsored someone..."

# 3. Galaxy Brain - Real answers
echo ""
echo "3️⃣ Galaxy Brain - Answer real questions..."
echo ""
echo "   Visit these and answer REAL questions:"
echo "   - https://github.com/github/feedback/discussions"
echo "   - https://github.com/vercel/next.js/discussions"
echo "   - https://github.com/microsoft/vscode/discussions"
echo ""
echo "   Provide helpful answers and wait for them to be marked as accepted"
echo "   Need: 2 for Bronze, 8 for Silver, 16 for Gold"
echo ""
read -p "Press Enter to continue..."

# 4. Open Sourcerer
echo ""
echo "4️⃣ Open Sourcerer - Contribute to other repos..."
echo ""
echo "Finding good first issues..."
gh search issues "label:good-first-issue" --state=open --limit 10 --json title,repository,url

echo ""
echo "   Pick an issue and submit a PR to another repository"
echo ""

# 5. Check current status
echo ""
echo "5️⃣ Checking your current achievement status..."
echo ""
echo "   Visit: https://github.com/minuttt?tab=achievements"
echo ""
echo "   Current badges:"
echo "   ✅ Quickdraw"
echo "   ✅ YOLO"
echo "   ⏳ Pull Shark Silver (wait 24-48 hours)"
echo ""

echo ""
echo "✅ Action Items Summary:"
echo "========================"
echo ""
echo "[ ] Add emoji reactions to 20+ issues"
echo "[ ] Sponsor a project ($1 minimum)"
echo "[ ] Answer 2 real questions in other repos"
echo "[ ] Contribute to 1 other repository"
echo "[ ] Wait 24-48 hours for Pull Shark Silver"
echo ""
echo "After completing these, you should have 6-7 badges!"
echo ""
