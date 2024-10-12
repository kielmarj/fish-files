#!/usr/bin/env fish

set -Ux CARGO_HOME /home/jess/.local/lib/cargo
set -Ux COLUMNS 80
set -Ux EDITOR micro
set -Ux GNUPGHOME /home/jess/.local/share/gpg
set -Ux --unpath GOPATH /home/jess/.local/lib/go
set -Ux NPM_CONFIG_USERCONFIG /home/jess/.config/npm/npmrc
set -Ux OPENER mimeo
set -Ux PAGER bat
set -Ux PARALLEL_HOME /home/jess/.config/parallel
set -Ux --unpath RIPGREP_CONFIG_PATH /home/jess/.config/ripgrep/ripgreprc
set -Ux RUSTUP_HOME /home/jess/.local/lib/rustup
set -Ux SHELL /usr/bin/fish
set -Ux VISUAL code
set -U fish_features qmark-noglob
set -U fish_key_bindings fish_default_key_bindings
set -U fish_user_paths /home/jess/Projects/exercism-solutions/bash /home/jess/Projects/testing /home/jess/Projects/script-collection /home/jess/bin
