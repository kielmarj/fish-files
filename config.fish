status is-interactive || exit

# Load theme
fish_config theme choose customBase16

# Integrations
zoxide init fish | source
# Adds `CTRL+F` as a keybinding to launch wikiman.
source /usr/share/wikiman/widgets/widget.fish

# Prints a random Zen quote from zenquotes.io before fish_greeting.
# Requires `jq` and `lolcat`.
echo ""
curl -s -X GET -H "Content-Type: application/json" https://zenquotes.io/api/random | \
jq -r '" " as $space | .[0] | .q + "\n\n\($space * ((.q |length)-(.a |length) - 2))--" + .a' |  \
tr -s \[:blank:\] | \
lolcat
echo ""
