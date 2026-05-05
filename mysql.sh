#!/bin/bash

# Usage: ./set-remote.sh <remote-name> <new-url>

REMOTE_NAME=$1
NEW_URL=$2

if [ -z "$REMOTE_NAME" ] || [ -z "$NEW_URL" ]; then
  echo "Usage: $0 <remote-name> <new-url>"
  exit 1
fi

# Check if inside a git repo
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Error: Not inside a Git repository."
  exit 1
fi

# Set the new URL
git remote set-url "$REMOTE_NAME" "$NEW_URL"

# Confirm result
echo "Updated remote '$REMOTE_NAME' to:"
git remote -v
