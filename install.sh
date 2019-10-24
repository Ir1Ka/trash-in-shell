#! /usr/bin/env bash

DIR=$(cd $(dirname $0); pwd)
TRASH_TOOL=.trashrc

if [ -f "$DIR/$TRASH_TOOL" ]; then
    cp $DIR/$TRASH_TOOL $HOME/
else
    echo "$TRASH_TOOL is not exists"
    exit 1
fi

if [ -f "$HOME/.bashrc" ]; then
    ENTRY_SCRIPT=$HOME/.bashrc
elif [ -f "$HOME/.profile" ]; then
    ENTRY_SCRIPT=$HOME/.profile
else
    echo "The current user does not have an env init script file"
    echo -e "\tSuch as ~/.profile and ~/.bashrc"
    exit 1
fi

echo '' >> $ENTRY_SCRIPT
echo '# include ~/.trashrc if it exists' >> $ENTRY_SCRIPT
echo 'if [ -f "$HOME/.trashrc" ]; then' >> $ENTRY_SCRIPT
echo '    . "$HOME/.trashrc"' >> $ENTRY_SCRIPT
echo 'fi' >> $ENTRY_SCRIPT
