#!/usr/bin/env fish

#╭━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╮
#┆ FILE: ~/.config/fish/functions/qn                                           ┆
#╰━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╯

function note --argument noteText \
    --description "fn Appends timestamped notes to a .txt file"

    set noteFile $HOME/Projects/private-notes/basket/notes.txt
    set ts "$(date +%Y-%m-%d\ %I:%M%P)"

    if test -z $argv
        echo -e "USAGE: note <note text...>"
        exit 1
    end

    touch $noteFile
    echo -e "$ts\t$noteText" >>$noteFile
    echo "New note added to $noteFile"
end
