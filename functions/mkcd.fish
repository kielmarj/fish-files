#!/usr/bin/env fish

#╭━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╮
#┆ FILE: ~/.config/fish/functions/mkcd.fish                                    ┆
#┆ ABOUT: Fish function. Makes a dir, cd's into it.                            ┆
#┆ USAGE: mkcd <dirname>                                                       ┆
#┆ REPO: https://github.com/NaturalBornCyborg/dot_dot_dots                     ┆
#┆ © 2024 NaturalBornCyborg <naturalborncyborg@proton.me>, GPL-3.0             ┆
#╰━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╯

function mkcd --description "fn Create a directory and set CWD"
    mkdir $argv[1] -p
    if test -d "$argv[1]"
        cd $argv[1]
    end
end
