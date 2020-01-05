# VIM - Yanking & Pasting with Registers

## Yanking (copying) text

In `normal` mode hit `y<motion-or-text-object>` to yank (copy) the corresponding motion or text object. For example, `yy` copies the current line (newline included), `yw` copies the rest of the word, etc.

> `dd` and `cc` both yank the current line as well, overwriting the copy buffer.

## Pasting text

Hit `p` (again in `normal` mode) to paste the yanked text after the cursor (in the case of whole lines this will paste on the next line). Hit `P` to paste before the cursor (or the line above in the case of whole lines).

## Registers

`vim` provides multiple places to store yanked/deleted/changed text through registers.

One can copy to a specific register with `"<register><operator><motion>`. For example, `"xdd` copies the current line into the `x` register.

`"<register>p` will then paste a specific register's text. `"xp` would paste the line yanked previously.

> I: `:reg` shows all registers & their current values (`:reg a b c` shows `a`, `b`, & `c` registers)
> II: For people running @nathanshelly's dotfiles `s` is mapped to `"`

### Special Registers

#### `+` register (system clipboard)

The `+` (`*` on Windows) register corresponds to the system clipboard.

- `"+<operator><motion-or-text-object>` yanks text onto the system clipboard
- `"+p` pastes from the system clipboard

> I: To check that your `vim` supports the system clipboard run `vim --version` and look for the `+checkhealth` or `+xterm_clipboard` flags. For `nvim` see [this comment](https://github.com/neovim/neovim/issues/7945#issuecomment-361968294)
> I: For people running @nathanshelly's dotfiles `ss` is mapped to `"+`.

#### `0` register (last `y`ank)

The `0` register holds the last text copied with a `y`ank. Text copied via the `d` or `c` operators will not show up here.

#### `1` register (inverse of `0` register)

The `1` register holds the last text either `c`ut or `d`eleted. Text copied via the `y` operator will not show up here.

> Registers `2` -> `9` hold the last 8 deletions, with `2` being the second most recent & `9` the oldest.

#### `/` (last search command)

The `/` register holds the last command searched via `/`.

#### `:` (last command)

The `:` register holds the last command run via `:`.

#### `_` (black hole register - the `/dev/null` of registers)

Text written to this register just disappears. Used to delete text without affecting other registers.

#### `.` (contains last text inserted)

The `.` register contains the last inserted text via typing. Operator doesn't matter (e.g. `y`, `c`, `a`, etc.). Pasted text does not show up here.

#### `%` (the current file name)

The `%` register holds the relative path starting from the directory `vim` was launched from. For example `vim bar/foo.md` then `"%p` pastes `bar/foo.md`.

#### `-` (last small deletion)

The `-` register holds the last small (less than a line) deletion.

#### `"` register (unnamed register)

This is the default registry all text is copied to via any operator. `""<operator>` is synonymous with `<operator>` (e.g. `""p` is the same as `p`).

### Accessing in insert & command modes

`Ctrl-r <register>` pastes text from the given register.
