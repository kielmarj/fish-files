function gau --description "fn git assume unchanged"
    echo "gau: Abbreviation for command 'git update-index --assume-unchanged FILE'"
    echo "This command will tell git to ignore changes in the specified file."
    commandline -i "git update-index --assume-unchanged "
end
