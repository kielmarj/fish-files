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

################################################################################
#### TODO - unsorted bash aliases
#### GIT
#alias get='git'
## add
#alias ga='git add'
#alias gall='git add -A'
#alias gap='git add -p'
#alias gav='git add -v'
## branch
#alias gb='git branch'
#alias gba='git branch --all'
#alias gbd='git branch -d'
#alias gbD='git branch -D'
#alias gbl='git branch --list'
#alias gbla='git branch --list --all'
#alias gblr='git branch --list --remotes'
#alias gbm='git branch --move'
#alias gbr='git branch --remotes'
#alias gbt='git branch --track'
#alias gdel='git branch -D'
## for-each-ref
#alias gbc='git for-each-ref --format="%(authorname) %09 %(if)%(HEAD)%(then)*%(else)%(refname:short)%(end) %09 %(creatordate)" refs/remotes/ --sort=authorname DESC' # FROM https://stackoverflow.com/a/58623139/10362396
## commit
#alias gc='git commit -v'
#alias gca='git commit -v -a'
#alias gcaa='git commit -a --amend -C HEAD' # Add uncommitted and unstaged changes to the last commit
#alias gcam='git commit -v -am'
#alias gcamd='git commit --amend'
#alias gcm='git commit -v -m'
#alias gci='git commit --interactive'
#alias gcsam='git commit -S -am'
## checkout
#alias gcb='git checkout -b'
#alias gco='git checkout'
#alias gcob='git checkout -b'
#alias gcobu='git checkout -b ${USER}/'
#alias gcom='git checkout $(get_default_branch)'
#alias gcpd='git checkout $(get_default_branch); git pull; git branch -D'
#alias gct='git checkout --track'
## clean
#alias gclean='git clean -fd'
## cherry-pick
#alias gcp='git cherry-pick'
#alias gcpx='git cherry-pick -x'
## diff
#alias gd='git diff'
#alias gds='git diff --staged'
#alias gdt='git difftool'
## archive
#alias gexport='git archive --format zip --output'
## fetch
#alias gf='git fetch --all --prune'
#alias gft='git fetch --all --prune --tags'
#alias gftv='git fetch --all --prune --tags --verbose'
#alias gfv='git fetch --all --prune --verbose'
#alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/$(get_default_branch)'
#alias gup='git fetch && git rebase'
## log
#alias gg='git log --graph --pretty=format:'\''%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset'\'' --abbrev-commit --date=relative'
#alias ggf='git log --graph --date=short --pretty=format:'\''%C(auto)%h %Cgreen%an%Creset %Cblue%cd%Creset %C(auto)%d %s'\'''
#alias ggs='gg --stat'
#alias ggup='git log --branches --not --remotes --no-walk --decorate --oneline' # FROM https://stackoverflow.com/questions/39220870/in-git-list-names-of-branches-with-unpushed-commits
#alias gll='git log --graph --pretty=oneline --abbrev-commit'
#alias gnew='git log HEAD@{1}..HEAD@{0}' # Show commits since last pull, see http://blogs.atlassian.com/2014/10/advanced-git-aliases/
#alias gwc='git whatchanged'
## ls-files
#alias gu='git ls-files . --exclude-standard --others' # Show untracked files
#alias glsut='gu'
#alias glsum='git diff --name-only --diff-filter=U' # Show unmerged (conflicted) files
## gui
#alias ggui='git gui'
## home
#alias ghm='cd "$(git rev-parse --show-toplevel)"' # Git home
## appendage to ghm
#if ! _command_exists gh; then
#	alias gh='ghm'
#fi
## merge
#alias gm='git merge'
## mv
#alias gmv='git mv'
## patch
#alias gpatch='git format-patch -1'
## push
#alias gp='git push'
#alias gpd='git push --delete'
#alias gpf='git push --force'
#alias gpo='git push origin HEAD'
#alias gpom='git push origin $(get_default_branch)'
#alias gpu='git push --set-upstream'
#alias gpunch='git push --force-with-lease'
#alias gpuo='git push --set-upstream origin'
#alias gpuoc='git push --set-upstream origin $(git symbolic-ref --short HEAD)'
## pull
#alias gl='git pull'
#alias glum='git pull upstream $(get_default_branch)'
#alias gpl='git pull'
#alias gpp='git pull && git push'
#alias gpr='git pull --rebase'
## remote
#alias gr='git remote'
#alias gra='git remote add'
#alias grv='git remote -v'
## rm
#alias grm='git rm'
## rebase
#alias grb='git rebase'
#alias grbc='git rebase --continue'
#alias grm='git rebase $(get_default_branch)'
#alias grmi='git rebase $(get_default_branch) -i'
#alias grma='GIT_SEQUENCE_EDITOR=: git rebase  $(get_default_branch) -i --autosquash'
#alias gprom='git fetch origin $(get_default_branch) && git rebase origin/$(get_default_branch) && git update-ref refs/heads/$(get_default_branch) origin/$(get_default_branch)' # Rebase with latest remote
## reset
#alias gus='git reset HEAD'
#alias gpristine='git reset --hard && git clean -dfx'
## status
#alias gs='git status'
#alias gss='git status -s'
## shortlog
#alias gcount='git shortlog -sn'
#alias gsl='git shortlog -sn'
## show
#alias gsh='git show'
## stash
#alias gst='git stash'
#alias gstb='git stash branch'
#alias gstd='git stash drop'
#alias gstl='git stash list'
#alias gstp='git stash pop'  # kept due to long-standing usage
#alias gstpo='git stash pop' # recommended for it's symmetry with gstpu (push)
#alias gstpu='git stash push'
#alias gstpum='git stash push -m'
#alias gsts='git stash push'
#alias gstsm='git stash push -m'
## submodules
#alias gsu='git submodule update --init --recursive'
## switch
#alias gsw='git switch'
#alias gswc='git switch --create'
#alias gswm='git switch $(get_default_branch)'
#alias gswt='git switch --track'
## tag
#alias gt='git tag'
#alias gta='git tag -a'
#alias gtd='git tag -d'
#alias gtl='git tag -l'
#case $OSTYPE in
#	darwin*)
#		alias gtls="git tag -l | gsort -V"
#		;;
#	*)
#		alias gtls='git tag -l | sort -V'
#		;;
#esac
## functions
#function gdv() {
#	git diff --ignore-all-space "$@" | vim -R -
#}
#function get_default_branch() {
#	if git branch | grep -q '^. main\s*$'; then
#		echo main
#	else
#		echo master
#	fi
#}

#### SYSTEMD
#alias sc='systemctl'
#alias scu='systemctl --user'
#alias scdr='systemctl daemon-reload'
#alias scdru='systemctl --user daemon-reload'
#alias scr='systemctl restart'
#alias scru='systemctl --user restart'
#alias sce='systemctl stop'
#alias sceu='systemctl --user stop'
#alias scs='systemctl start'
#alias scsu='systemctl --user start'
#alias scue='sceu'
#alias scus='scsu'
#alias scur='scdru'
