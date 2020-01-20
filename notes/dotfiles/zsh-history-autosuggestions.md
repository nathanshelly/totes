# dotfiles - `zsh` history autosuggestions

[`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions) is a helpful plugin that allows easy selection/execution of past history items.

As you type `zsh-autosuggestions` shows the most recent history line that matches what you've typed.

To test this yourself run `echo hello`, then type `e` and you should see `echo hello` but with the `cho hello` in light gray. Future suggestions will be wrapped in `[]` to distinguish them, e.g. `e[cho hello]`.

Here is a [link to a GIF](TODO: add link to gif) showing this behavior.

## shortcuts

The common way to interact with these suggestions is with the following shortcuts.

> With `vi` mode at the command line one can use motions in normal mode to accept parts of the suggestion. In the `echo hello` example previously one could type `e`, enter normal mode, then hit `$` to accept to the end of the suggestion.

### `Ctrl-w`

Hit `Ctrl-w` to accept the next word (as defined by `vi`). Using our `echo hello` example (each line here denotes a triggering of `Ctrl-w`, in reality no extra lines are created):

```shell
> e[cho hello]
   ^
> echo [hello]
       ^
> echo hello
            ^
```

This can come in particularly handy for paths:

```shell
> ls [some/path/to/somewhere]
      ^
> ls some[/path/to/somewhere]
          ^
> ls some/[path/to/somewhere]
           ^
> ls some/path[/to/somewhere]
               ^
> ls some/path/[to/somewhere]
                ^
```

> hitting `Ctrl-w` repeatedly can be tedious sometimes, see the next shortcut for less granular manipulation

Here is a [link to a GIF](TODO: add link to gif) showing this behavior.

### `Ctrl-e`

Hit `Ctrl-e` to accept to the end of the suggestion (can span multiple lines). You can still make any final edits you'd like before executing.

Our previous examples:

```shell
> e[cho hello]
   ^
> echo hello
            ^
```

```shell
> ls [some/path/to/somewhere]
      ^
> ls some/path/to/somewhere
                            ^
```

Here is a [link to a GIF](TODO: add link to gif) showing this behavior.

### `Ctrl-<Space>`

Hit `Ctrl-<Space>` to accept to the end of the suggestion (can span multiple lines) and immediately execute.

Our previous examples:

```shell
> e[cho hello]
   ^
> echo hello
hello
```

```shell
> ls [some/path/to/somewhere]
      ^
> ls some/path/to/somewhere
some/path/to/somewhere
```

Here is a [link to a GIF](TODO: add link to gif) showing this behavior.
