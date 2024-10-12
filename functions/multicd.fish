#!/usr/bin/env fish
#╭━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╮
#┆ PROJECT: Arch/Hyprland Dotfiles                                             ┆
#┆ FILE:                                                                       ┆
#┆ AUTHOR/LICENSE:  NaturalBornCyborg/GPL-3.0                                 ┆
#┆ REPO: https://github.com/NaturalBornCyborg/dot_dot_dots                     ┆
#╰━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╯

#┆
#==============================================================================#
# ~/.config/fish/functions/multicd.fish                                        #
#                                                                              #
# Fish function for jumping directories with the `..` abbr (fishshell.com)     #
# See fish.config for abbreviations.                                           #
#                                                                              #
#  https://github.com/NaturalBornCyborg/dot_dot_dots                          #
#==============================================================================#

function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
    abbr -a dotdot --regex '^\.\.+$' --function multicd
end
