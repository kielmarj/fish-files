function mkx --argument dirAbbr --argument shellAbbr --argument scriptName \
    --description "fn Create shell script, make it executable, open in $EDITOR"

    set -f USAGE "USAGE: mkx [dirAbbr] [shellAbbr] <scriptName>\n\
    dirAbbr:\n\
      b   bin\n\
      t   testing\n\
    shellAbbr:\n\
      b   bash\n\
      f   fish"

    # Test if 3 arguments have been provided
    if test -z $argv[3]
        printf "ERROR: missing arguments\n$USAGE"
        return 2
    end

    # DIRECTORY ABBREVIATIONS used to set the script path
    switch $dirAbbr
        case b
            set script $HOME/bin/$scriptName
        case t
            set script $HOME/Projects/Private/testing/$scriptName
        case '*'
            printf "ERROR: invalid directory abbreviation\n$USAGE"
            return 2
    end

    # SHELL ABBREVIATIONS used to add the shebang line
    switch $shellAbbr
        case b
            printf '#!/usr/bin/env bash\n' >$script
        case f
            printf '#!/usr/bin/env fish\n' >$script
        case '*'
            printf "ERROR: invalid shell abbreviation\n$USAGE"
            return 2
    end

    printf "# $scriptName\n" >>$script

    chmod +x $script

    $EDITOR $script
end
