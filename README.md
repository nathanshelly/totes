# totes

A tool for learning via terminal notecards.

## in action

![simple usage](assets/simple_usage.gif 'simple usage')

See more usage examples [below](#additional-usage-examples).

## getting started

Install `totes`:

```shell
make install
```

This will symlink the `totes` executable to `/usr/local/bin/totes`. It will also symlink [the notes included in this repository](./notes) to `$XDG_DATA_HOME/totes` (defaults to `$HOME/.local/share/totes` if `XDG_DATA_HOME` is unset) (based on the [XDG directory specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)).

Now go ahead and run it!

```shell
totes

# to see usage information
totes --help
```

## additional usage examples

### notes from a specific subject

![notes from a specific subject](assets/notes_from_a_specific_subject.gif 'notes from a specific subject')

### editing a note

![edit note](assets/edit_note.gif 'edit note')

### viewing available subjects

![list subjects](assets/list_subjects.png 'list subjects')
