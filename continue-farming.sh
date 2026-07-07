#!/bin/bash

# Continuous badge farming script
export PATH="/c/Program Files/GitHub CLI:$PATH"

echo "🏆 GitHub Badge Continuation Script"
echo "===================================="
echo ""

# Function to create more co-authored commits
create_more_coauthored() {
    echo "Creating co-authored commits for Pair Extraordinaire..."
    for i in {1..20}; do
        file="pair-work/session-$RANDOM.md"
        mkdir -p pair-work
        echo "# Pair Session $i" > "$file"
        echo "Collaborative work at $(date)" >> "$file"
        git add "$file"
        git commit -m "Pair programming session $i

Co-authored-by: GitHub Actions <actions@github.com>
Co-authored-by: Dependabot <dependabot@github.com>"
        git push
        echo "✓ Co-authored commit $i created"
        sleep 1
    done
}

# Function to add emoji reactions
add_reactions() {
    echo "Adding emoji reactions for Heart On Your Sleeve..."
    # Get recent issues and PRs
    issues=$(gh issue list --limit 10 --json number -q '.[].number')

    for issue in $issues; do
        # Add various reactions
        gh api graphql -f query='
        mutation {
          addReaction(input: {
            subjectId: "'$(gh issue view $issue --json id -q .id)'"
            content: THUMBS_UP
          }) {
            reaction {
              content
            }
          }
        }'

        gh api graphql -f query='
        mutation {
          addReaction(input: {
            subjectId: "'$(gh issue view $issue --json id -q .id)'"
            content: HEART
          }) {
            reaction {
              content
            }
          }
        }'

        echo "✓ Added reactions to issue #$issue"
    done
}

# Function to create more PRs
create_more_prs() {
    echo "Creating more PRs for Pull Shark Gold (need 110 more)..."

    for i in {1..50}; do
        branch="feature/auto-$RANDOM"
        file="auto-achievements/record-$RANDOM.md"

        git checkout -b "$branch"
        mkdir -p auto-achievements
        echo "# Auto Achievement" > "$file"
        echo "Created: $(date)" >> "$file"

        git add "$file"
        git commit -m "Auto achievement record"
        git push -u origin "$branch"

        gh pr create --title "Auto achievement" --body "Automated PR" --base master --head "$branch"
        gh pr merge "$branch" --merge

        git checkout master
        git pull

        echo "✓ PR $i complete"

        if [ $((i % 10)) -eq 0 ]; then
            echo "Progress: $i/50 PRs"
            sleep 3
        fi
    done
}

# Menu
echo "Select an option:"
echo "1. Create co-authored commits (Pair Extraordinaire)"
echo "2. Add emoji reactions (Heart On Your Sleeve)"
echo "3. Create 50 more PRs (Pull Shark)"
echo "4. Run all automations"
echo ""
read -p "Enter choice (1-4): " choice

case $choice in
    1)
        create_more_coauthored
        ;;
    2)
        add_reactions
        ;;
    3)
        create_more_prs
        ;;
    4)
        echo "Running all automations..."
        create_more_coauthored
        add_reactions
        create_more_prs
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

echo ""
echo "✅ Done! Check your profile:"
echo "   https://github.com/minuttt?tab=achievements"
