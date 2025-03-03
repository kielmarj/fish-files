function bangbang --description 'fn Insert last cmd with !!'
        # Use with abbreviation: 'abbr -a --position anywhere --function bangbang -- !!'
        printf %s $history[1]
end
