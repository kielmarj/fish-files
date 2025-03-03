# ------------------------------------------------------------------------------
#    DATE 2024-10-12_04:33 | MODIFIED 2025-03-03_05:12
#    FILE ~/.config/fish/conf.d/02_abbreviations.fish
#  AUTHOR © 2025 Jessica Kielmar <kielmarj@gmail.com>
#    REPO https://github.com/kielmarj/fish-files
# LICENSE MIT
# ------------------------------------------------------------------------------

# DIRECTORIES
abbr -a b 'cd /home/jess/bin' # b cd bin
abbr -a bp 'cd /home/jess/Projects/Private/bin' # bp cd bin private
abbr -a i 'cd /home/jess/inbox' # i cd inbox
abbr -a pr 'cd /home/jess/Projects/Private' # pr cd private
abbr -a pb 'cd /home/jess/Projects/Published' # pb cd published
abbr -a t 'cd /home/jess/Projects/Private/testing' # t cd testing

# GENERAL
abbr -a --position anywhere -- _ 'sudo' # _ sudo
abbr -a --position anywhere --function bangbang -- !! # !! insert last cmd
abbr -a binds 'cat .config/hypr/conf/binds.conf | bat' # binds hyprland binds
abbr -a chx 'chmod +x' # chx make executable
abbr -a c 'clear' # c clear
abbr -a cp 'cp -ivR' # cp copy
abbr -a cwd 'pwd | wl-copy' # cwd copy current dir
abbr -a ff 'fastfetch' # ff fastfetch
abbr -a gc 'git clone' # gc git clone
abbr -a --position anywhere -- h '--help | bat --plain --language=help' # h help
abbr -a ll 'lsd -AlgF -I .git --hyperlink always --group-directories-first --color always --icon always --icon-theme fancy --permission rwx --total-size' # ll lsd
abbr -a ln 'ln -iv' # ln link
abbr -a --set-cursor -- m 'man --nh --nj % 2> /dev/null | bat' # m manpage
abbr -a md 'mkdir -p' # md make dir
abbr -a mv 'mv -iv' # mv move
abbr -a off 'systemctl poweroff' # off power off
abbr -a pqe 'pacman -Qe' # pqe explicitly installed pkgs
abbr -a pqet 'pacman -Qet' # pqet explicitly installed unrequired pkgs
abbr -a pqi 'pacman -Qi' # pqi pkg info
abbr -a pql 'pacman -Ql' # pql list files installed by pkg
abbr -a pqo 'pacman -Qo' # pqo find pkg owning file
abbr -a pqs 'pacman -Qs' # pqs search for pkg
abbr -a rd 'rmdir' # rd remove dir
abbr -a rm 'rm -iv' # rm remove
abbr -a rmo 'pacman -Qttdq | sudo pacman -Rnsu -' # rmo remove orphaned pkgs
abbr -a rmp 'sudo pacman -Rnsu' # rmp remove pkg
abbr -a rmwal 'pywal-custom.sh --remove' # rmwal delete current wallpaper
abbr -a tar 'tar -cvaf' # tar archive
abbr -a uns 'pywal-custom.sh --unsplash' # get random unsplash wallpaper
abbr -a wal 'pywal-custom.sh --saved' # use a saved wallpaper
abbr -a y 'yazi' # y yazi

# FZF
abbr -a fzc 'cat $HOME/Projects/Private/private-notes/fzfiles/commands.tsv | fzf -1 -q "$1" --with-nth 1 --delimiter "\t" --wrap --preview-window right,60% --preview "echo -e {2}\n\n{3} | fold -s -w $(tput cols)" --bind "enter:execute-silent(wl-copy {2})+accept" 2&>/dev/null; commandline -i (wl-paste)' # fzc search saved cmds via fzf
abbr -a fzp 'cat $HOME/Projects/Private/private-notes/fzfiles/prompts.tsv | fzf -1 -q "$1" --with-nth 1 --delimiter "\t" --preview "echo {2} | fold -s -w $(tput cols)" --bind "enter:execute-silent(wl-copy {2})+accept" 2&>/dev/null; commandline -i (wl-paste)' # fzp search saved prompts via fzf

