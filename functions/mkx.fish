#!/usr/bin/env fish

#╭━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╮
#┆ FILE: ~/.config/fish/functions/mkx.fish                                     ┆
#┆ ABOUT: fish function that creates a shell script file, adds a shebang line, ┆
#┆   and immediately opens the script in $EDITOR.                              ┆
#┆ REPO: https://github.com/kielmarj/fish-files                                ┆
#┆ © 2024 Jessica Kielmar <kielmarj@gmail.com>, GPL-3.0                        ┆
#╰━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╯

# USAGE: mkx [dirAbbr] [shellAbbr] <scriptName>
#   All 3 arguments are required in the order provided above. See SETUP to
#   customize the script for your use (EASY! - would only take a few minutes).
# EXAMPLE: mkx t f example.sh
#   This will create 'example.sh' in $HOME/bin/testing, make it executable,
#   add the shebang '#!/usr/bin/env fish', and open it in $EDITOR.
# SETUP: If you want to use this script, you will most likely need to adjust
#   a few lines, as it has been written for my personal directory setup.
# * dirAbbr = directory abbreviation for where the script will be saved. Set up
#   your own directories in the DIRECTORY ABBREVIATIONS section below.
# * shellAbbr = abbreviation for the shell language the script will be written
#   in. These can be adjusted in the SHELL ABBREVIATIONS section below.
# * You may also want to adjust the USAGE text at the start of the script once
#   you have set your preferred directory and shell abbreviations.

function mkx --argument dirAbbr --argument shellAbbr --argument scriptName \
    --description \
    "Create a shell script, make it executable, and open it in $EDITOR"

    set -f USAGE "\nUSAGE: mkx [dirAbbr] [shellAbbr] <scriptName> \n\
    \rdirAbbr:            \n\
    \r  b   bin           \n\
    \r  c   collection    \n\
    \r  t   testing       \n\
    \r  eb  exercism/bash \n\
    \rshellAbbr:          \n\
    \r  b   bash          \n\
    \r  f   fish          \n\
    \r  s   sh            \n\
    \r  z   zsh"

    # Test if 3 arguments have been provided
    if test -z $argv[3]
        printf "ERROR: missing arguments\n$USAGE"
        return 2
    end

    # DIRECTORY ABBREVIATIONS used to set the script path
    switch $dirAbbr
    case 'b'
        set -f script $HOME/bin/$scriptName
    case 'c'
        set -f script $HOME/bin/collection/$scriptName
    case 't'
        set -f script $HOME/bin/testing/$scriptName
    case 'eb'
        set -f script $HOME/bin/exercism/bash/$scriptName
    case '*'
        printf "ERROR: invalid directory abbreviation\n$USAGE"
        return 2
    end

    # SHELL ABBREVIATIONS used to add the shebang line
    switch $shellAbbr
    case 'b'
        printf '#!/usr/bin/env bash\n' >$script
    case 'f'
        printf '#!/usr/bin/env fish\n' >$script
    case 's'
        printf '#!/usr/bin/env sh\n' >$script
    case 'z'
        printf '#!/usr/bin/env zsh\n' >$script
    case '*'
        printf "ERROR: invalid shell abbreviation\n$USAGE"
        return 2
    end

    printf "# $scriptName\n" >>$script

    chmod +x $script

    $EDITOR $script
end
