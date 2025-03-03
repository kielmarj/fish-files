# ------------------------------------------------------------------------------
#    DATE 2025-01-10 | UPDATED 2025-03-03
#    FILE ~/.config/fish/functions/bkup.fish
#  AUTHOR © 2025 Jessica Kielmar <kielmarj@gmail.com>
#    REPO https://github.com/kielmarj/fish-files
# LICENSE MIT
# ------------------------------------------------------------------------------

function bkup --argument filename --description "fn Copies FILE to FILE.bak"
    cp -iv $filename $filename.bak
end
