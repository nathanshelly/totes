#! /usr/bin/env bash

# Determine which command is available to render the file
render_command='cat'
if command -v mdcat > /dev/null; then
  render_command='mdcat'
elif command -v bat > /dev/null; then
  render_command='bat'
fi

file_to_render="$1"
if [[ -z $1 ]]; then
  # ref - https://github.com/koalaman/shellcheck/issues/1247
  # shellcheck disable=2012
  file_to_render="$(ls -At -- *.md | tail -n 1)"
  # update last read time to cycle through notes
  touch "$file_to_render"
fi

"$render_command" "$file_to_render"
