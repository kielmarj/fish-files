status is-interactive || exit

# Load theme
fish_config theme choose uwunicorn

# Random Zen quote from zenquotes.io before fish_greeting - prints before fish_greeting
echo ""
curl -s -X GET -H "Content-Type: application/json" https://zenquotes.io/api/random | \
jq -r '" " as $space | .[0] | .q + "\n\n\($space * ((.q |length)-(.a |length) - 2))--" + .a' |  \
tr -s \[:blank:\] | \
lolcat
echo ""

# CTRL + F = wikiman
source /usr/share/wikiman/widgets/widget.fish

# Load function descriptions
function describe_functions --description "Load function descriptions for tab completions"
    set -l output ""
    for dir in $HOME/.config/fish/functions /usr/share/fish/functions
        for file in $dir/*.fish
            set -l cmd (basename $file .fish)
            set -l desc (functions -Dv $cmd)[5]
            set -a output "- `$cmd`: $desc"
        end
    end
    printf '%s\n' $output | sort
end
describe_functions 2&> /dev/null
