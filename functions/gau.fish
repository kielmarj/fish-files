# ------------------------------------------------------------------------------
#    DATE 2024-11-23 | UPDATED 2025-03-03
#    FILE ~/.config/fish/functions/gau.fish
#  AUTHOR © 2025 Jessica Kielmar <kielmarj@gmail.com>
#    REPO https://github.com/kielmarj/fish-files
# LICENSE MIT
# ------------------------------------------------------------------------------

function gau --description "fn git assume unchanged"
    echo "gau: Abbreviation for command 'git update-index --assume-unchanged FILE'"
    echo "This command will tell git to ignore changes in the specified file."
    commandline -i "git update-index --assume-unchanged "
end
