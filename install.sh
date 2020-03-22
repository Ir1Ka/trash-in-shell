#! /usr/bin/env bash

DIR=$(cd $(dirname $0); pwd)
TRASH_TOOL=.trashrc

if [ -f "$DIR/$TRASH_TOOL" ]; then
    cp -uf "$DIR/$TRASH_TOOL" "$HOME"/
else
    echo "$TRASH_TOOL is not exists"
    exit 1
fi

if [ -f "$HOME/.bashrc" ]; then
    ENV_SCRIPT="$HOME/.bashrc"
elif [ -f "$HOME/.profile" ]; then
    ENV_SCRIPT="$HOME/.profile"
else
    echo "The current user does not have an env init script file" 1>&2
    echo -e "\tSuch as ~/.bashrc or ~/.profile" 1>&2
    exit 1
fi

cat << EOF >> $ENV_SCRIPT

# include ~/$TRASH_TOOL if it exists
if [ -f "\$HOME/$TRASH_TOOL" ]; then
    . "\$HOME/$TRASH_TOOL"
fi
EOF
