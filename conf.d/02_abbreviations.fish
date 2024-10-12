#!/usr/bin/env fish

#╭━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╮
#┆ FILE: ~/.config/fish/conf.d/02_abbreviations.fish                           ┆
#┆ ABOUT: abbreviations for fish.                                              ┆
#┆ REPO: https://github.com/NaturalBornCyborg/dot_dot_dots                     ┆
#┆ © 2024 NaturalBornCyborg <naturalborncyborg@proton.me>, GPL-3.0             ┆
#╰━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╯

# DIRECTORIES
# Go to (cd) frequently used dirs:
abbr -a gd cd ~/git/dot_dot_dots
abbr -a gn cd ~/git/private-notes
abbr -a gt cd ~/bin/testing
# Copy working directory path to clipboard:
abbr -a cwd 'pwd | wl-copy'
# Automatically include the -p option for mkdir:
abbr -a md mkdir -p
# Show directory sizes, sorted largest to smallest:
abbr -a ds 'du -h --max-depth=1 | sort -hr | awk \'{print $1 " " $2}\' | GREP_COLORS=\'mt=1;32\' grep --color=always -E ".*"'
# View directory contents:
abbr -a ft tree -a -C -L 5 -I .git/ # include files
abbr -a ll lsd -AlLgF -I .git --hyperlink always --group-directories-first --color always --icon always --icon-theme fancy --permission rwx --total-size
# Tree - All contents/Recursive/Hyperlinked
abbr -a ltr 'lsd -ALF -I .git --tree --hyperlink always --group-directories-first --color always --icon never'
# [T]ree - [A]ll contents
abbr -a ta 'lsd -ALF -I .git --tree --hyperlink always --group-directories-first --color always --icon never --depth 1'
# [T]ree - [D]irs only
abbr -a td 'lsd -ALFd -I .git --tree --hyperlink always --color always --icon never'
# FILES
abbr -a bsl find . -xtype l -print # Find broken symlinks.
abbr -a chx chmod +x # Make a file executable.
abbr -a tn tar -cvaf # Create an archive with tar.
abbr -a gr grep --color=auto
abbr -a wa which -a # Include all matches for which.
abbr -a hgr kitten hyperlinked-grep
# Ask for confirmation before linking, copying, moving/renaming, or deleting files:
abbr -a cp cp -ivR
abbr -a mv mv -iv
abbr -a rm rm -iv
abbr -a ln ln -iv

# SYSTEM
abbr -a df df -hTx tmpfs # Display amount of space on the filesystem.
abbr -a jctl journalctl -p 4 -xb # Show errors from journalctl.
abbr -a off systemctl poweroff # Poweroff.
abbr -a lsu --set-cursor 'pacman -Qql % | grep -Fe .service -e .socket' # List available systemd units for PACKAGE.
abbr -a gpu 'radeontop -d - -l 1 | grep \'gpu \' | awk \'{print $5}\'' # Check GPU load.
abbr -a fzfk 'ps -ef | fzf | awk \'{print $2}\' | xargs kill' # Browse/kill processes via fzf.
# Nicely formatted mount points and disk usage:
abbr -a pd 'echo "╓───── m o u n t . p o i n t s";echo "╙────────────────────────────────────── ─ ─ ";lsblk -a;echo "";echo "╓───── d i s k . u s a g e";echo "╙────────────────────────────────────── ─ ─ ";df -h;'

# PACKAGES
# Show recently installed/upgraded packages:
abbr -a new 'expac --timefmt="%Y-%m-%d %T" "%l\t%n" | sort | tail -n 100'
# Browse info on all installed pkgs via fzf:
abbr -a fzfp 'pacman -Qq | fzf --preview "pacman -Qil {}" --layout=reverse --bind "enter:execute(pacman -Qil {} | bat --language yaml)"'
# Pacman:
abbr -a pqi pacman -Qi # Get info on an installed package.
abbr -a pqo pacman -Qo # Find out what package provides a command or file.
abbr -a pqs pacman -Qs # Regex search installed package names and descriptions.
abbr -a pqe pacman -Qe # List all explicitly installed packages.
abbr -a pqet pacman -Qet # List all explicitly installed packages that are not required by any other packages.
abbr -a gpkgs 'pacman -Qq | grep -Ee "-(bzr|cvs|darcs|git|hg|svn)$"' # List all installed git/dev packages.
abbr -a rmp sudo pacman -Rnsu # Remove a package.
abbr -a rmo 'pacman -Qttdq | sudo pacman -Rnsu -' # Remove all orphaned packages.
abbr -a pul sudo rm /var/lib/pacman/db.lock # Unlock pacman database.

# GIT
abbr -a gco git checkout
abbr -a gcm git commit -m
abbr -a gau git update-index --assume-unchanged
abbr -a gps 'git push origin (git rev-parse --abbrev-ref HEAD)'
abbr -a gpl 'git pull origin (git rev-parse --abbrev-ref HEAD)'
abbr -a gst git status
abbr -a glo 'git log --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit | bat'
abbr -a ggc git gc
abbr -a grp git repack -ad

# DOWNLOADS
abbr -a wgr wget --mirror -p --convert-links --recursive # Recursively download a website.
abbr -a yta yt-dlp --extract-audio # Extract audio from a youtube video.

# WALLPAPER/PYWAL THEME (see home/bin/pywalOpts)
abbr -a wp pywal-custom.sh --path # Print path of current wallpaper.
abbr -a nwp pywal-custom.sh --saved # Run pywal using wallpaper directory.
abbr -a us pywal-custom.sh --unsplash # Run pywal with a random image from unsplash.com
abbr -a rmwp pywal-custom.sh --remove # Delete the current wallpaper.

# MISC
abbr -a ff fastfetch
abbr -a wthr curl wttr.in # Get your local weather forecast in the terminal.
abbr -a bff /opt/brave-bin/brave --profile-directory=Default --app-id=cadlkienfkclaiaibeoongdcgmdikeeg
abbr -a y yazi
# Pretty manpages (cursor will be placed at % to type the name of the manpage)
abbr -a pm --set-cursor 'man --nh --nj % | bat'
# Save manpages as nicely formatted .txt files
abbr -a mtxt --set-cursor 'command man % | col -bx > man.txt'
# Use bat for --help
abbr -a h --position anywhere -- '--help 2>&1 | bat --plain --language=help'
# Search hyprland keybinds
abbr -a b 'cat .config/hypr/conf/binds.conf | grep'
