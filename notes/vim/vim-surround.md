# VIM - `vim-surround` (adding, changing & deleting surround characters)

[ref](https://github.com/tpope/vim-surround)

## Adding surrounding characters

Use the `ys` operator to surround a given motino/text object with given character.

Syntax: `ys<motion/text object><character>`

Example usage (with `^` indicating the cursor):

```
The quick brown fox jumps over the lazy dog
      ^
```

After typing `ysiw"`:

```
The "quick" brown fox jumps over the lazy dog
    ^
```

> For surrounding characters with left and right variants (`()`, `[]`, `{}`) the left variant (`(`, `{`, etc.) adds padding spaces around the motion/object while the right variant (`)`, `}`, etc.) does not add padding spaces. E.g. using the above example, `ysiw(` -> `( quick )` while `ysiw)` -> `(quick)`.

## Deleting surrounding characters

Use the `ds` operator to delete nearest (innermost) surrounding pair of given character.

Syntax: `ds<character>`

Example usage (with `^` indicating the cursor):

```
The 'quick' brown fox jumps over the lazy dog
        ^
```

After typing `ds'`:

```
The quick brown fox jumps over the lazy dog
    ^
```

## Changing surrounding characters

Use the `cs` operator to change nearest (innermost) surrounding pair of valid surrounding characters into any other valid surrounding character pairing.

Syntax: `cs<character-to-replace><new-character>`

Example usage (with `^` indicating the cursor):

```
The "quick" brown fox jumps over the lazy dog
      ^
```

After typing `cs"}`:

```
The {quick} brown fox jumps over the lazy dog
    ^
```

> Same rules around characters with left & right variants (e.g. `()` or `{}`) mentioned above apply.
