#!/usr/bin/env fish

#╭━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╮
#┆ FILE: ~/.config/fish/functions/printFiles.fish                              ┆
#┆ ABOUT: Fish function. For each line of input, echoes lines equivalent to    ┆
#┆   paths of actual files.                                                    ┆
#┆ USAGE: <some command> | $0                                                  ┆
#┆ EXAMPLE: pacman -Ql less | awk '{print $2}' | printFiles                    ┆
#┆ REPO: https://github.com/NaturalBornCyborg/dot_dot_dots                     ┆
#┆ © 2024 NaturalBornCyborg <naturalborncyborg@proton.me>, CC-BY-4.0           ┆
#╰━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╯

status is-interactive || exit

function printFiles --description "Only print paths to actual files"
    while read -l input   # For each line (of STDIN),
        if test -f $input # Test if it is a file
            echo $input   # If it is a file, echo the line to STDOUT
        end
    end
end

# bash equivalent:
# printFiles (){
#    while read input; do
#        if [[ -f "$input" ]]; then
#          echo "$input"
#        fi
#    done
# }
