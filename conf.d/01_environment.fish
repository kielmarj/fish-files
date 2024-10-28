#!/usr/bin/env fish

set -Ux CARGO_HOME /home/jess/.local/lib/cargo
set -Ux COLUMNS 80
set -Ux EDITOR micro
set -Ux GNUPGHOME /home/jess/.local/share/gpg
set -Ux GOPATH /home/jess/.local/lib/go
set -Ux NPM_CONFIG_USERCONFIG /home/jess/.config/npm/npmrc
set -Ux PAGER bat
set -Ux PARALLEL_HOME /home/jess/.config/parallel
set -Ux --unpath RIPGREP_CONFIG_PATH /home/jess/.config/ripgrep/ripgreprc
set -Ux RUSTUP_HOME /home/jess/.local/lib/rustup
set -Ux SHELL /usr/bin/fish
set -Ux VISUAL code
set -Ux FZF_DEFAULT_OPTS '--multi --layout reverse --border double --highlight-line --preview-window 65% --color="preview-bg:#282a36,fg:#8be9fd,bg:black,hl+:#f1fa8c,hl:#f1fa8c,fg+:#50fa7b,bg+:#282a36,gutter:#bd93f9,query:#f1fa8c,info:#ffb86c,border:#ff79c6,scrollbar:#ffb86c,preview-border:#bd93f9,preview-scrollbar:#ffb86c,prompt:#50fa7b,pointer:#ffb86c,marker:#ffb86c,spinner:#bd93f9"'
set -U fish_features qmark-noglob
set -U fish_key_bindings fish_default_key_bindings
set -U fish_user_paths $HOME/bin $HOME/Projects/Private/testing $HOME/Projects/Private/script-collection $HOME/Projects/Private/exercism-solutions $CARGO_HOME/bin $HOME/.local/lib/npm/bin $HOME/packages/writerside-242.21870.138/bin
