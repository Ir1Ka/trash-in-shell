# trash-in-shell
This is a shell script tools for trash in terminal.

It provides an extra layer of protection for console deletions.

## features
1. Delete and restore files
2. Clear trash files
3. Delete and restore directores
4. Support wildcards *
  - Wildcard preposition
  - Willcard post
  - Wildcard middle
5. Show trash
6. Restore follow files when deleting
7. Restore follow directores when deleting
8. Support relative path for delete
9. Support relative path for restore

## not implements

## usage
Copy the file `trash` to your preferred location,
such as you home directory,
and then add follow shell code to your `~/.bashrc`
, `~/.profile`.

``` shell
# include ~/trash if it exists
if [ -f "$HOME/trash" ]; then
    . "$HOME/trash"
fi
```
