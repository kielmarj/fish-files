#!/usr/bin/env fish

#╭━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╮
#┆ FILE: ~/.config/fish/conf.d/02_abbreviations.fish                           ┆
#╰━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╯

abbr -a assume 'git update-index --assume-unchanged'
abbr -a binds 'cat .config/hypr/conf/binds.conf | grep'
abbr -a chx 'chmod +x'
abbr -a cp 'cp -ivR'
abbr -a cwd 'pwd | wl-copy'
abbr -a ff fastfetch
abbr -a fz --set-cursor 'cat $HOME/Projects/private-notes/fzfiles/%.txt | fzf -1 -q "$1" --with-nth 1 --delimiter "\t" --preview \'echo {2} | fold -s -w $(tput cols)\' --bind "enter:execute-silent(wl-copy {2})+accept"'
abbr -a h --position anywhere -- '--help 2>&1 | bat --plain --language=help'
abbr -a ll 'lsd -AlgF -I .git --hyperlink always --group-directories-first --color always --icon always --icon-theme fancy --permission rwx --total-size'
abbr -a ln 'ln -iv'
abbr -a m --set-cursor 'man --nh --nj % | bat'
abbr -a mkdir 'mkdir -p'
abbr -a mv 'mv -iv'
abbr -a off 'systemctl poweroff'
abbr -a pqe 'pacman -Qe'
abbr -a pqet 'pacman -Qet'
abbr -a pqi 'pacman -Qi'
abbr -a pql 'pacman -Ql'
abbr -a pqo 'pacman -Qo'
abbr -a pqs 'pacman -Qs'
abbr -a rm 'rm -iv'
abbr -a rmo 'pacman -Qttdq | sudo pacman -Rnsu -'
abbr -a rmp 'sudo pacman -Rnsu'
abbr -a rmwal 'pywal-custom.sh --remove'
abbr -a tar 'tar -cvaf'
abbr -a unsplash 'pywal-custom.sh --unsplash'
abbr -a wal 'pywal-custom.sh --saved'
abbr -a y yazi
