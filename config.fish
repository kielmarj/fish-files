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
    source /home/jess/packages/writerside-242.21870.138/plugins/terminal/shell-integrations/fish/fish-integration.fish
    broot --print-shell-function fish | source

    # zen quotes
    curl -s -X GET -H "Content-Type: application/json" https://zenquotes.io/api/random | jq -r '" " as $space | .[0] | .q + "\n\n\($space * ((.q |length)-(.a |length) - 2))--" + .a' | cowsay -nsf $(cowsay -l | tail -n +2 | tr ' ' '\n' | shuf -n1) | lolcat
end
