#! /usr/bin/env bash

maybe_symlink() {
  src="$1"
  dst="$2"

  if [ -f "$dst" ] || [ -d "$dst" ] || [ -L "$dst" ]; then
    maybe_current_symlink_src="$(readlink "$dst")"

    # if destination is already a symlink pointing to the src we're trying to
    # symlink then we're already done, return without doing anything
    if [ "$maybe_current_symlink_src" == "$src" ]; then
      return
    fi

    echo "file exists: $dst (src: $src), overwrite it? (y/any other key)"
    read -r -s -n 1 continue < /dev/tty

    if [[ "$continue" != 'y' ]]; then
      # shellcheck disable=2016
      echo 'skipping symlink, note that this may break `totes`'
      return
    fi
  fi

  echo "symlinking $src to $dst"
  # `-f` does nothing if no file @ $dst to overwrite
  ln -sf "$src" "$dst"
}

repo_root="$(git rev-parse --show-toplevel)"

# make executable globally runnable
# assumes `/usr/bin/local` is in $PATH
executable_path="/usr/local/bin/totes"
maybe_symlink "$repo_root/totes" "$executable_path"

# symlink sample notes to user data directory based on XDG standard
# ref - https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
notes_path="${XDG_DATA_HOME:-$HOME/.local/share}/totes"
maybe_symlink "$repo_root/notes" "$notes_path"
