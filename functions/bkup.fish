#!/usr/bin/env fish

#╭━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╮
#┆ FILE: ~/.config/fish/functions/bkup.fish                                    ┆
#┆ ABOUT: Fish function for quick file backup; copies FILE to FILE.bak         ┆
#┆ USAGE: bkup <file>                                                          ┆
#┆ REPO: https://github.com/NaturalBornCyborg/dot_dot_dots                     ┆
#┆ © 2024 NaturalBornCyborg <naturalborncyborg@proton.me>, GPL-3.0             ┆
#╰━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╯

status is-interactive || exit

function bkup --argument filename --description "Copies FILE to FILE.bak"
    cp -iv $filename $filename.bak
end
