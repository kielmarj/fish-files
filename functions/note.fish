# ------------------------------------------------------------------------------
#    DATE 2025-01-10 | UPDATED 2025-03-03
#    FILE ~/.config/fish/functions/note.fish
#  AUTHOR © 2025 Jessica Kielmar <kielmarj@gmail.com>
#    REPO https://github.com/kielmarj/fish-files
# LICENSE MIT
# ------------------------------------------------------------------------------

function note --argument noteText \
    --description "fn Append timestamped notes to a .txt file"

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
