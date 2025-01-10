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
