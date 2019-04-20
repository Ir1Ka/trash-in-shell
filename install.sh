#! /usr/bin/env bash

DIR=$(cd $(basename $0); pwd)
TRASH_TOOL=trash

if [ -f "$DIR/$TRASH_TOOL" ]; then
    cp $DIR/$TRASH_TOOL $HOME/
fi

if [ -f "$HOME/.profile" ]; then
    ENTRY_SCRIPT=$HOME/.profile
elif [ -f "$HOME/.bashrc" ]; then
    ENTRY_SCRIPT=$HOME/.bashrc
fi

echo '' >> $ENTRY_SCRIPT
echo '# include ~/trash if it exists' >> $ENTRY_SCRIPT
echo 'if [ -f "$HOME/trash" ]; then' >> $ENTRY_SCRIPT
echo '    . "$HOME/trash"' >> $ENTRY_SCRIPT
echo 'fi' >> $ENTRY_SCRIPT
