# ------------------------------------------------------------------------------
#    DATE 2025-01-10 | UPDATED 2025-03-03
#    FILE ~/.config/fish/functions/forFileIn.fish
#  AUTHOR © 2025 Jessica Kielmar <kielmarj@gmail.com>
#    REPO https://github.com/kielmarj/fish-files
# LICENSE MIT
# ------------------------------------------------------------------------------

function forFileIn --description "fn Run a command on all files in a directory after creating backups"
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
            # Create backups first
            cp $file $file.bak
            # Run the command on the file
            $command $file
        end
    end
end
