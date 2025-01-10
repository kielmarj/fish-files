function multicd --description 'fn cd to parent directory with ..'
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
    abbr -a dotdot --regex '^\.\.+$' --function multicd
end
