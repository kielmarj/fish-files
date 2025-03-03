# ------------------------------------------------------------------------------
#    DATE 2025-01-10 | UPDATED 2025-03-03
#    FILE ~/.config/fish/config.fish
#  AUTHOR © 2025 Jessica Kielmar <kielmarj@gmail.com>
#    REPO https://github.com/kielmarj/fish-files
# LICENSE MIT
# ------------------------------------------------------------------------------

status is-interactive || exit

# Load theme
fish_config theme choose uwunicorn

# Random Zen quote from zenquotes.io before fish_greeting - prints before fish_greeting
echo ""
curl -s -X GET -H "Content-Type: application/json" https://zenquotes.io/api/random | jq -r '" " as $space | .[0] | .q + "\n\n\($space * ((.q |length)-(.a |length) - 2))--" + .a' | tr -s \[:blank:\] | lolcat
echo ""

# CTRL + F = wikiman
source /usr/share/wikiman/widgets/widget.fish

# Load function descriptions
function describe_functions --description "Load function descriptions for tab completions"
    set -f output ""
    for file in $fish_function_path/*.fish
        set -f cmd (basename $file .fish)
        set -f desc (functions -Dv $cmd)[5]
        set -a output "`$cmd`: $desc"
    end
    printf '%s\n' $output | sort -d
end
describe_functions 2&>/dev/null
