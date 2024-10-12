#!/usr/bin/env fish

#╭━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╮
#┆ FILE: ~/.config/fish/config.fish                                            ┆
#┆ ABOUT: configuration for fish (https://fishshell.com)                       ┆
#╰━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╯

if status is-interactive
    # Load theme (preferred over running `fish_config theme save` to avoid
    # cluttering the environment with ~40 color variables)
    fish_config theme choose moonlight

    # Integrations
    zoxide init fish | source
    source /usr/share/wikiman/widgets/widget.fish
    broot --print-shell-function fish | source
end
