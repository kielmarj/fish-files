# ------------------------------------------------------------------------------
#    DATE 2025-03-03 | MODIFIED 2025-03-03
#    FILE ~/.config/fish/functions/catt.fish
#  AUTHOR © 2025 Jessica Kielmar <kielmarj@gmail.com>
#    REPO https://github.com/kielmarj/fish-files
# LICENSE MIT
# ------------------------------------------------------------------------------

function catt --description "fn display contents of file or folder"
	if test -d $argv
		ls -Al1 $argv
	else if test -f $argv
		bat --paging auto $argv
	else
		echo "$argv is not a readable file or directory"
	end
end
