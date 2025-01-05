status is-interactive || exit

# Load theme
fish_config theme choose uwunicorn

function get_fndescriptions
# Iterate over all function files in ~/.config/fish/functions
for file in ~/.config/fish/functions/*.fish
    # Extract the function name from the file name
    set -f fnname (basename -s .fish $file)

    # Parse the file for the function definition with --description
    set -f fndescription (grep -oP '(?<=--description ")[^"]*(?=")' $file)

    set -f compdir ~/.config/fish/completions/
    mkdir -p $compdir

    # If a description is found, register it with Fish completions
    if test -n "$fndescription"
        # Use Fish's completion system to preload the description
        echo "complete $fnname --description '$fndescription'" >$compdir$fnname.fish
    end
end
end

get_fndescriptions

### Integrations ###
# TODO: I keep forgetting zoxide exists. Read more about using it.
zoxide init fish | source
# This adds `CTRL+F` as a keybinding to launch wikiman.
source /usr/share/wikiman/widgets/widget.fish
source /home/jess/.local/bin/writerside-242.21870.138/plugins/terminal/shell-integrations/fish/fish-integration.fish
# broot --print-shell-function fish | source

### Zen Quotes ###
# This prints a random Zen quote from zenquotes.io every time a new terminal
# is opened. Note, this prints before `fish_greeting`. It could instead be
# included within `fish_greeting` itself, but I like to change my greeting,
# so I leave this here so to ensure it is always printed.
echo ""
curl -s -X GET -H "Content-Type: application/json" https://zenquotes.io/api/random | \
jq -r '" " as $space | .[0] | .q + "\n\n\($space * ((.q |length)-(.a |length) - 2))--" + .a' |  \
tr -s \[:blank:\] | \
lolcat
echo ""
