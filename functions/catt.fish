function catt --description "catt display contents of file or folder"
	if test -d $argv
		ls -Al1 $argv
	else if test -f $argv
		bat --paging auto $argv
	else
		echo "$argv is not a readable file or directory"
	end
end
