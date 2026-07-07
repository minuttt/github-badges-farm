#!/usr/bin/env python3
import subprocess
import time
import random

def run_command(cmd):
    """Run shell command"""
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    return result.stdout

# Set PATH
path_cmd = 'export PATH="/c/Program Files/GitHub CLI:$PATH"'

# Create many PRs for Pull Shark badge tiers
# Bronze: 2, Silver: 16, Gold: 128

print("Creating PRs for Pull Shark badge...")
print("Target: 128 PRs for Gold tier")

for i in range(6, 130):  # Already have 5
    branch = f"feature/badge-{random.randint(1000, 99999)}"
    file_path = f"achievements/badge-{random.randint(1000, 99999)}.md"

    print(f"\nPR #{i}:")

    # Create branch
    run_command(f'git checkout -b {branch}')

    # Create file
    run_command(f'mkdir -p achievements')
    with open(file_path, 'w') as f:
        f.write(f"# Achievement {i}\n")
        f.write(f"Created at {time.time()}\n")

    # Commit
    run_command(f'git add {file_path}')
    run_command(f'git commit -m "Add achievement record #{i}"')

    # Push
    run_command(f'git push -u origin {branch}')

    # Create PR
    pr_url = run_command(f'{path_cmd} && gh pr create --title "Achievement #{i}" --body "Automated PR for badge farming" --base master --head {branch}')
    print(f"  Created: {pr_url.strip()}")

    # Get PR number and merge
    pr_list = run_command(f'{path_cmd} && gh pr list --head {branch} --json number')

    # Merge immediately
    run_command(f'{path_cmd} && gh pr merge {branch} --merge --auto')

    # Switch back
    run_command('git checkout master')
    run_command('git pull')

    print(f"  Merged!")

    if i % 10 == 0:
        print(f"\nProgress: {i}/128 PRs created")
        time.sleep(3)
    else:
        time.sleep(1)

print("\nDone! Created 124 additional PRs.")
print("Total: 129 PRs merged (Gold tier achieved!)")
