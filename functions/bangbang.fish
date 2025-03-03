# ------------------------------------------------------------------------------
#    DATE 2025-01-10 | MODIFIED 2025-03-03
#    FILE ~/.config/fish/functions/bangbang.fish
#  AUTHOR © 2025 Jessica Kielmar <kielmarj@gmail.com>
#    REPO https://github.com/kielmarj/fish-files
# LICENSE MIT
# ------------------------------------------------------------------------------

function bangbang --description 'fn Insert last cmd with !!'
        # Use with abbreviation: 'abbr -a --position anywhere --function bangbang -- !!'
        printf %s $history[1]
end
