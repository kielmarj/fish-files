# ------------------------------------------------------------------------------
#    DATE 2025-01-10 | UPDATED 2025-03-03
#    FILE ~/.config/fish/functions/pkgFiles.fish
#  AUTHOR © 2025 Jessica Kielmar <kielmarj@gmail.com>
#    REPO https://github.com/kielmarj/fish-files
# LICENSE MIT
# ------------------------------------------------------------------------------

function pkgFiles --argument package \
    --description "fn List all files installed by a package"
    if test (count $argv) -ne 1
        echo "USAGE: \$0 <installed package name>"
        exit 1
    end

    for f in $(pacman -Qql $package)
        if test -f $f
            echo $f
        end
    end
end
