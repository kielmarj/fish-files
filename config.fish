status is-interactive || exit

# Load theme
fish_config theme choose uwunicorn

# CTRL + F = wikiman
source /usr/share/wikiman/widgets/widget.fish

# Prints a random Zen quote from zenquotes.io before fish_greeting
echo ""
curl -s -X GET -H "Content-Type: application/json" https://zenquotes.io/api/random | \
jq -r '" " as $space | .[0] | .q + "\n\n\($space * ((.q |length)-(.a |length) - 2))--" + .a' |  \
tr -s \[:blank:\] | \
lolcat
echo ""
