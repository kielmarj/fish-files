function bangbang --description 'fn Add last command to current commandline with !!'
        # Use with abbreviation: abbr -a --position anywhere --function bangbang -- !!
        printf %s $history[1]
end
