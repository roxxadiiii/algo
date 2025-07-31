#!/bin/sh

if [ -z "$1" ]; then
    echo "❌ Error: Commit message is required."
    echo "Usage: ./up.sh "Your commit message here""
    exit 1
fi

COMMIT_MESSAGE="$1"
git add .
git commit -m "$COMMIT_MESSAGE"
git push

echo "✅ All changes pushed with commit message: "$COMMIT_MESSAGE""
