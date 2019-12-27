#! /usr/bin/env bash

# Determine which command is available to render the file
render_command='cat'

if command -v mdcat > /dev/null; then
  render_command='mdcat'
elif command -v bat > /dev/null; then
  render_command='bat'
fi

"$render_command" "$@"
