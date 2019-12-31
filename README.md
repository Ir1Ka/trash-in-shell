# trash-in-shell
This is a shell script tools for trash in terminal.

It provides an extra layer of protection for console deletions.

## Features
1. Delete and restore files
2. Clear trash files
3. Delete and restore directories
4. Support wildcards * for delete and restore
5. Show trash
6. Support relative path for delete
7. Support relative path for restore
8. Support for paths of files or directories containing spaces

## Limit
1. The path of the file or directory cannot contain "%", otherwise it may
cause abnormal behavior.

## Usage
The tool provide commands: `rm`, `ur`, `rl` and `cr`.

- `rm`: the command alias system `rm` program,
and it only accepts files or directories to be deleted
without options like the system `rm`.
- `ur`: restore deleted files or directories to original location,
and the parameters like `rm`.
- `rl`: list deleted files and directories.
- `cr`: clear the trash.

## Install
There are two ways to install the tool.

1. Auto installation
2. Manual installation

#### Auto installation
Run the `install.sh` script to auto install.

#### Manual installation
Copy the file `.trashrc` to your preferred location,
such as you home directory,
and then add follow shell code to your `~/.bashrc` or `~/.profile`.
**Note**: `~/.bashrc` __FIRST__ and then `~/.profile`.

``` shell
# include ~/.trashrc if it exists
if [ -f "$HOME/.trashrc" ]; then
    . "$HOME/.trashrc"
fi
```

## Uninstall
1. Delete file `~/.trashrc`
2. Delete text as above code from your `~/.bashrc` or `~/.profile`

## NOTE
1. If you want to use wildcard to restore files or directories,
the parameter __MUST__ wrapped in quotation marks ("" __OR__ '').
