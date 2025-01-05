#!/usr/bin/env fish
function extract --description "fn Extract files from various archive formats."
    # Exit with error & print USAGE if no argument is provided
    if test (count $argv) -eq 0
        echo "USAGE: extract <archive>"
        return 1
    end
    # Use file extension to determine which tool to use
    switch $argv
        case '*.tar.bz2'
            tar xjf $argv
        case '*.tar.gz'
            tar xzf $argv
        case '*.bz2'
            bunzip2 $argv
        case '*.rar'
            unrar x $argv
        case '*.gz'
            gunzip $argv
        case '*.tar'
            tar xvf $argv
        case '*.tbz2'
            tar xjf $argv
        case '*.tgz'
            tar xzf $argv
        case '*.zip'
            unzip $argv
        case '*.Z'
            uncompress $argv
        # Catch-all case for undefined formats
        case '*'
            echo "Unknown archive format: $argv."
            echo "Valid formats: .tar.bz2 | .tar.gz | .bz2 | .rar | .gz | .tar | .tbz2 | .tgz | .zip | .Z"
            return 1
    end
end
