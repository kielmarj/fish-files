# ------------------------------------------------------------------------------
#    DATE 2025-01-10 | UPDATED 2025-03-03
#    FILE ~/.config/fish/functions/multicd.fish
#  AUTHOR © 2025 Jessica Kielmar <kielmarj@gmail.com>
#    REPO https://github.com/kielmarj/fish-files
# LICENSE MIT
# ------------------------------------------------------------------------------

function multicd --description 'fn cd to parent directory with ..'
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
    abbr -a dotdot --regex '^\.\.+$' --function multicd
end
