## HUB - Create Pull Request

Use the following command to create a pull request from a commit:

```
> hub pull-request -cop --no-edit
```

... where the parameters have the following meaning:

- `-c` : copy pull-request link to clipboard
- `-o` : open the pull-request in your browser
- `-p` : push the latest commits
- `--no-edit` : use the first (chronologically) commit as the basis of pull request
