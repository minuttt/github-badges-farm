#!/usr/bin/env python3
import subprocess
import json
import time

def run_gh_command(query):
    """Run GitHub CLI GraphQL command"""
    cmd = ['gh', 'api', 'graphql', '-f', f'query={query}']
    result = subprocess.run(cmd, capture_output=True, text=True)
    return json.loads(result.stdout)

def create_discussion(title, body):
    """Create a discussion"""
    query = '''
    mutation {
      createDiscussion(input: {
        repositoryId: "R_kgDOTP6eeQ"
        categoryId: "DIC_kwDOTP6eec4DAqkD"
        title: "''' + title + '''"
        body: "''' + body + '''"
      }) {
        discussion {
          id
          number
          url
        }
      }
    }
    '''
    result = run_gh_command(query)
    return result['data']['createDiscussion']['discussion']

def add_comment(discussion_id, body):
    """Add comment to discussion"""
    query = '''
    mutation {
      addDiscussionComment(input: {
        discussionId: "''' + discussion_id + '''"
        body: "''' + body + '''"
      }) {
        comment {
          id
        }
      }
    }
    '''
    result = run_gh_command(query)
    return result['data']['addDiscussionComment']['comment']['id']

def mark_as_answer(comment_id):
    """Mark comment as answer"""
    query = '''
    mutation {
      markDiscussionCommentAsAnswer(input: {
        id: "''' + comment_id + '''"
      }) {
        discussion {
          answer {
            id
          }
        }
      }
    }
    '''
    result = run_gh_command(query)
    return result

# Create discussions
for i in range(1, 16):
    print(f"Creating discussion #{i}...")

    discussion = create_discussion(
        f"Badge optimization question #{i}",
        f"What's the best approach for earning badges strategy #{i}?"
    )

    print(f"  Created: {discussion['url']}")

    comment_id = add_comment(
        discussion['id'],
        f"Excellent question! Strategy #{i} focuses on:\\n\\n1. Consistent daily activity\\n2. Automation where appropriate\\n3. Community engagement\\n4. Quality contributions\\n\\nThis will help you earn badges faster!"
    )

    print(f"  Added comment: {comment_id}")

    mark_as_answer(comment_id)

    print(f"  Marked as answer [OK]")
    time.sleep(2)

print("\nDone! Created and answered 15 discussions.")
