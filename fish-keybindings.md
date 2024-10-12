---
file: "fish-keybindings.md"
about: "Notes on fish default key bindings & keybindings provided by other programs for integration with fish"
repo: "https://github.com/kielmarj/fish-files"
copyright: "© 2024 Jessica Kielmar (kielmarj) <kielmarj@gmail.com>"
license: "GPL-3.0"
---

# fish default keybindings

|BIND|ACTION|
|---|---|
|<kbd>CTRL+Y|yank (paste the last cut/copied text)|
|<kbd>ALT+Y|cycle through the history of yanked text, allowing you to paste previous copies (yank-pop)|
|<kbd>Right Arrow|move cursor forward by one character|
|<kbd>Left Arrow|move cursor backward by one character|
|<kbd>ALT+Right Arrow|move cursor forward by one character|
|<kbd>ALT+Left Arrow|move cursor backward by one character|
|<kbd>CTRL+Right Arrow|move cursor forward by one word|
|<kbd>CTRL+Left Arrow|move cursor backward by one word|
|<kbd>Page Up|go to the beginning of history|
|<kbd>Page Down|go to the end of history|
|<kbd>CTRL+X|copy the current command line to the clipboard|
|<kbd>CTRL+V|paste from clipboard|
|<kbd>ALT+ESC|cancel the current command or action|
|<kbd>TAB|trigger autocomplete suggestions|
|<kbd>CTRL+S|toggle search in pager|
|<kbd>Shift+Tab|completes the current word and starts a search for completions|
|<kbd>Shift+Delete|delete character or exit if at the start of the line|
|<kbd>ALT+ENTER|start a new line without executing|
|<kbd>ALT+RETURN|start a new line without executing|
|<kbd>Down Arrow|navigate down through history or search results|
|<kbd>Up Arrow|navigate up through history or search results|
|<kbd>ALT+Up Arrow|navigate up through previous command tokens|
|<kbd>ALT+Down Arrow|navigate down through previous command tokens|
|<kbd>Shift+Right Arrow|move forward by a "big word" (skips over punctuation)|
|<kbd>Shift+Left Arrow|move backward by a "big word"|
|<kbd>ALT+Right/Left Arrow|nextd-or-forward-word / prevd-or-backward-word|
|<kbd>ALT+Up/Down Arrow|history-token-search-backward / forward|
|<kbd>ALT+. (dot)|history-token-search-backward|
|<kbd>ALT+L|list current token|
|<kbd>ALT+O|preview current file|
|<kbd>ALT+W|`whatis` lookup for the current token|
|<kbd>CTRL+L|clear screen|
|<kbd>CTRL+C|cancel command line|
|<kbd>CTRL+U|delete everything from cursor to the beginning of the line|
|<kbd>CTRL+W|delete the last path component|
|<kbd>ALT+D|kill-word or show history|
|<kbd>CTRL+D|delete or exit|
|<kbd>ALT+S|prepend last command from history with `sudo`|
|<kbd>F1|show fish man page|
|<kbd>ALT+H|show fish man page|
|<kbd>ALT+P|paginate output|
|<kbd>ALT+#|toggle comment commandline >history|
|<kbd>ALT+E|edit current command in $EDITOR|
|<kbd>ALT+V|edit current command in $VISUAL|
|<kbd>CTRL+ENTER/RETURN|execute|
|<kbd>CTRL+K|deletes everything from the cursor to the end of the line|
|<kbd>Delete|delete character|
|<kbd>Backspace|backward delete|
|<kbd>Home|beginning of line|
|<kbd>End|end of line|
|<kbd>CTRL+A|beginning of line|
|<kbd>CTRL+E|end of line|
|<kbd>CTRL+H / Backspace|backward delete character|
|<kbd>CTRL+P|up or search|
|<kbd>CTRL+N|down or search|
|<kbd>CTRL+F|forward character|
|<kbd>CTRL+B|backward character|
|<kbd>CTRL+T|transpose characters|
|<kbd>CTRL+G|cancel|
|<kbd>CTRL+/|undo|
|<kbd>CTRL+Z|undo|
|<kbd>ALT+/|redo|
|<kbd>ALT+T|transpose words|
|<kbd>ALT+U|uppercase word|
|<kbd>ALT+C|capitalize word|
|<kbd>ALT+Backspace|delete word backward|
|<kbd>ALT+H|deletes the word to the left of the cursor|
|<kbd>ALT+B|move backward by word|
|<kbd>ALT+F|move forward by word|
|<kbd>ALT+<|beginning of buffer|
|<kbd>ALT+>|end of buffer|
|<kbd>CTRL+R|history-pager|

# Provided by wikiman
(Needs to be sourced in config.fish)

|BIND|ACTION|
|---|---|
|<kbd>CTRL+F|wikiman quicklaunch|

# Provided by fish-fzf

|BIND|ACTION|
|---|---|
|<kbd>CTRL+ALT+F|recursively search the current directory's non-hidden [F]iles; preview directory contents or file contents with syntax highlighting; ENTER outputs paths of selected files|
|<kbd>CTRL+ALT+L|search the current repo's git [L]og; preview commit messages & diff; ENTER outputs hashes of selected commits|
|<kbd>CTRL+ALT+S|the current repository's git [S]tatus; preview git diff of the file; ENTER outputs the relative paths of selected lines|
|<kbd>CTRL+R|[R]everse-i-search (fish's command history); preview the entire command with fish syntax highlighting; ENTER outputs the selected commands|
|<kbd>CTRL+ALT+P|search running [P]rocesses; preview CPU usage, memory usage, start time, etc for the process; ENTER outputs the PID of the selected processes|
|<kbd>CTRL+V|search shell [V]ariables currently in scope; preview the variable's scope info and values; ENTER outputs the selected variables|
