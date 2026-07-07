#!/bin/bash

# Badge farming automation script
export PATH="/c/Program Files/GitHub CLI:$PATH"

echo "🏆 GitHub Badge Farmer"
echo "====================="

# Function to create and merge a PR quickly (Quickdraw + Pull Shark + YOLO)
create_quick_pr() {
    local branch="feature/badge-$RANDOM"
    local file="achievements/badge-$RANDOM.md"

    # Create new branch
    git checkout -b "$branch"

    # Create a file
    mkdir -p achievements
    echo "# Badge Achievement $(date)" > "$file"
    echo "Earned at $(date)" >> "$file"

    # Commit and push
    git add "$file"
    git commit -m "Add badge achievement record"
    git push -u origin "$branch"

    # Create PR
    pr_url=$(gh pr create --title "Badge achievement: $branch" --body "Automated badge farming PR" --base master --head "$branch")

    echo "Created PR: $pr_url"

    # Get PR number
    pr_number=$(gh pr view "$branch" --json number -q .number)

    # Merge immediately (YOLO badge - merge without review)
    gh pr merge "$pr_number" --merge --auto

    # Switch back to master
    git checkout master
    git pull

    echo "✓ PR #$pr_number merged!"
}

# Function to create co-authored commit (Pair Extraordinaire)
create_coauthored_commit() {
    local file="pair-work/collaboration-$RANDOM.md"
    mkdir -p pair-work

    echo "# Pair Programming Session $(date)" > "$file"
    echo "Collaborative work" >> "$file"

    git add "$file"
    git commit -m "Collaborative work session

Co-authored-by: GitHub <noreply@github.com>
Co-authored-by: Claude <claude@anthropic.com>"

    git push

    echo "✓ Co-authored commit created!"
}

# Function to close issue quickly (Quickdraw)
create_and_close_issue_quickly() {
    # Create issue
    issue_number=$(gh issue create --title "Quick test issue" --body "Testing quickdraw badge" --json number -q .number)

    echo "Created issue #$issue_number"

    # Close it immediately (within 5 minutes = Quickdraw)
    gh issue close "$issue_number" --comment "Resolved immediately"

    echo "✓ Issue #$issue_number closed quickly!"
}

# Main execution
echo ""
echo "Starting badge farming routine..."
echo ""

# Run multiple iterations
for i in {1..5}; do
    echo "--- Iteration $i ---"

    # Create and merge PR (Pull Shark + YOLO + potentially Quickdraw)
    create_quick_pr
    sleep 2

    # Create co-authored commit
    create_coauthored_commit
    sleep 2

    echo ""
done

# Create quick issues
echo "Creating quick issues..."
for i in {1..3}; do
    create_and_close_issue_quickly
    sleep 1
done

echo ""
echo "✅ Badge farming complete!"
echo ""
echo "Badges you should now have progress on:"
echo "  - Pull Shark (merged PRs)"
echo "  - YOLO (merged without review)"
echo "  - Quickdraw (closed issues/PRs quickly)"
echo "  - Pair Extraordinaire (co-authored commits)"
echo ""
echo "Check your profile at: https://github.com/minuttt"
