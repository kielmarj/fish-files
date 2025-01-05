# ------------------------------------------------------------------------------
#    DATE 2024-10-12_04:33 MODIFIED 2024-11-10_22:33
#    FILE ~/.config/fish/conf.d/02_abbreviations.fish
#  AUTHOR © 2024 Jessica Kielmar <kielmarj@gmail.com>
#    REPO TODO
# LICENSE MIT
# ------------------------------------------------------------------------------

### Directory Shortcuts ###
abbr -a b 'cd /home/jess/bin'
abbr -a bp 'cd /home/jess/Projects/Private/bin'
abbr -a i 'cd /home/jess/inbox'
abbr -a pr 'cd /home/jess/Projects/Private'
abbr -a pb 'cd /home/jess/Projects/Published'
abbr -a t 'cd /home/jess/Projects/Private/testing'

### Git ###
# Ignore changes in a specific file. The cursor will be placed before the
# placeholder 'FILE'. Replace 'FILE' with the actual file name.
# abbr -a gau --set-cursor 'git update-index --assume-unchanged %FILE'
# Stop ignoring changes in a specific file. The cursor will be placed before
# the placeholder 'FILE'. Replace 'FILE' with the actual file name.
# abbr -a nogau --set-cursor 'git update-index --no-assume-unchanged %FILE'

abbr -a --position anywhere --function bangbang -- !!
abbr -a binds 'cat .config/hypr/conf/binds.conf | bat'
abbr -a chx 'chmod +x'
abbr -a cp 'cp -ivR'
abbr -a cwd 'pwd | wl-copy'
abbr -a ff 'fastfetch'
abbr -a fzc 'cat $HOME/Projects/Private/private-notes/fzfiles/commands.tsv | fzf -1 -q "$1" --with-nth 1 --delimiter "\t" --wrap --preview-window right,60% --preview \'echo -e {2}\n\n{3} | fold -s -w $(tput cols)\' --bind "enter:execute-silent(wl-copy {2})+accept" 2&>/dev/null; commandline -i (wl-paste)'
abbr -a fzp 'cat $HOME/Projects/Private/private-notes/fzfiles/prompts.tsv | fzf -1 -q "$1" --with-nth 1 --delimiter "\t" --preview \'echo {2} | fold -s -w $(tput cols)\' --bind "enter:execute-silent(wl-copy {2})+accept" 2&>/dev/null; commandline -i (wl-paste)'
abbr -a gc 'git clone'
abbr -a --position anywhere -- h '--help | bat --plain --language=help'
abbr -a ll 'lsd -AlgF -I .git --hyperlink always --group-directories-first --color always --icon always --icon-theme fancy --permission rwx --total-size'
abbr -a ln 'ln -iv'
abbr -a --set-cursor -- m 'man --nh --nj % 2> /dev/null | bat'
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
abbr -a y 'yazi'
