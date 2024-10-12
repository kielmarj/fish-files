#!/usr/bin/env fish

function forFileIn
    set USAGE "USAGE: forFileIn <directory> <command>"

    # Test if at least 2 arguments have been provided
    if test -z $argv[2]
        echo $USAGE
        return 1
    end

    # Test if the 1st argument is a valid directory
    if not test -d $argv[1]
        echo "Error: Directory $argv[1] does not exist."
        echo $USAGE
        return 1
    else
        set dir $argv[1]
    end

    # Test if the 2nd argument is a valid command
    if not command -q $argv[2]
        echo "Error: $argv[2] is not a valid command."
        echo $USAGE
        return 1
    else
        set command $argv[2..-1]
    end

    # Run $command on all files in $dir
    for file in $dir/*
        if test -f $file
            echo "Running $command on $file"
            $command $file
        end
    end
end
