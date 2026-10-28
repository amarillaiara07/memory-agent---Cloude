#!/usr/bin/env bash
# UserPromptSubmit: guarda cada prompt con fecha en memory/prompts.md.
cd "$CLAUDE_PROJECT_DIR" || exit 0
prompt=$(jq -r '.prompt // empty')
[ -z "$prompt" ] && exit 0
{
  echo "### $(date -u '+%Y-%m-%d %H:%M UTC')"
  echo "$prompt"
  echo
} >> memory/prompts.md
exit 0
