# dotfiles - `fasd` shortcuts

## `j [<directory-fragment>]`

Use `j` without any argument to see a list of directories you've `cd`ed to sorted by frecency (frequency & recency).

Use `j <directory-fragment>` to jump to the closest matching directory on the list.

```shell
> j
9.12564    /Users/nathanshelly/Downloads
49.3289    /Users/nathanshelly/.files/docker
283.816    /Users/nathanshelly/dev/totes
494.852    /Users/nathanshelly/.files
> j Dow # jump to ~/Downloads
> j .f # jump to ~/.files
> j dock # jump to ~/.files/docker
```

## `ez <file-fragment>`

Use `fasd -f` to see a list of files you've edited sorted by frecency (frequency & recency).

Use `ez <file-fragment>` to edit the closest matching file on the list.

```shell
> fasd -f
11.6       /Users/nathanshelly/.files/macos/README.md
12         /Users/nathanshelly/dev/totes/infra/actions/shellcheck
30.0427    /Users/nathanshelly/.files/Brewfile
> ez brew # edit ~/.files/Brewfile
> ez macos # edit ~/.files/macos/README.md
> ez insh # edit ~/dev/totes/infra/actions/shellcheck
```
