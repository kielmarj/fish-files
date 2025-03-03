# ------------------------------------------------------------------------------
#    DATE 2025-01-10 | UPDATED 2025-03-03
#    FILE ~/.config/fish/functions/mkcd.fish
#  AUTHOR © 2025 Jessica Kielmar <kielmarj@gmail.com>
#    REPO https://github.com/kielmarj/fish-files
# LICENSE MIT
# ------------------------------------------------------------------------------

function mkcd --description "fn Create a directory and cd into it"
    mkdir $argv[1] -p
    if test -d "$argv[1]"
        cd $argv[1]
    end
end
