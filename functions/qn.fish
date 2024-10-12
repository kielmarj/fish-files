#!/usr/bin/env fish

#╭━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╮
#┆ FILE: ~/.config/fish/functions/qn                                           ┆
#┆ ABOUT: Fish function for 'quickNotes'. Appends simple timestamped notes to  ┆
#┆   a single Markdown file.                                                   ┆
#┆ REPO: https://github.com/kielmarj/fish-files                                ┆
#┆ © 2024 Jessica Kielmar <kielmarj@gmail.com>, GPL-3.0                        ┆
#╰━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╯

# USAGE: qn <your note text here...>
#   This function uses `printf` to output text. If you are unfamiliar with the
#   caveats of `printf`, see NOTES at the end of this file for tips & examples.
# SETUP: If you want to use this script, you will probably want to adjust the
#   path for the quickNotes.md file. Customize it in the NOTES DIRECTORY section
#   below. Optionally, adjust the values for FILENAME and TIMESTAMP FORMAT.

function qn --argument noteText \
    --description "quickNotes - appends timestamped note to a md file."

    # Test if at least 1 argument has been provided
    if test -z $argv[1]
        echo "ERROR: no note submitted."
        echo "USAGE: qn <note text...>"
        return 1
    end

    # NOTES DIRECTORY (ending with '/')
    set -f notesDir $HOME/Projects/private-notes/basket/

    # FILENAME
    set -f fileName quickNotes.md

    # TIMESTAMP FORMAT (currently: YYYY-MM-DD HH:MMam/pm)
    set -f ts "$(date +%Y-%m-%d\ %I:%M%P)"

    # Combine notesDir & fileName for full path of the quickNotes file
    set -f quickNotes $notesDir$fileName

    # Test if the quickNotes file exists
    if not test -f $quickNotes
        # If not, set up the directory and create the file
        mkdir -p $notesDir
        touch $quickNotes
    end

    # Append timestamped note
    printf '%s\n' "### $ts" >>$quickNotes
    printf '%s\n' "$noteText" >>$quickNotes
    echo "" >>$quickNotes

    echo "New note added to $quickNotes"
end

# NOTES
# Tips & tricks for markdown compatible `printf` output. Tailored for use with
# this function, which already encloses input with double quotes.
# - Use single quotes around inline HTML.
#   * Example:
#     qn This is regular text. '<b>This is bold text.</b>'
#   * Output:
#     This is regular text. <b>This is bold text.</b>
# - Use single quotes around code you do not intend to run.
#   * Example:
#     qn $(echo this code will be executed)
#   * Output:
#     this code will be executed
#   * Example:
#     qn '$(echo this code will be output as you see it here)'
#   * Output:
#     $(echo this code will be output as you see it here)
# - Backticks do not affect the output of `printf`, so you can use them as you
#   normally would in markdown for inline code and fenced codeblocks, but
#   code you don't want executed still needs to be enclosed by single quotes
#   whether backticks are used or not.
#   * Example:
#     qn `$(echo this code will be executed)`
#   * Output:
#     `this code will be executed`
#   * Example:
#     qn `'$(echo this code will be output as you see it here)'`
#   * Output:
#     `$(echo this code will be output as you see it here)`
# - In fish, ALT+ENTER allows you to start typing on a new line. Although this
#   is visually convenient, it doesn't affect the output of `printf`.
# - To output a newline, use \n (unquoted).
#   * Example:
#     qn line 1\nline 2
#   * Output:
#     line 1
#     line 2
# - For Markdown output, you may want to add '<br>' (including the single
#   quotes) for line breaks before using \n to start a new line.
#   * Example:
#     qn line 1'<br>'\nline 2
#   * Output:
#     line 1<br>
#     line 2
# - Or, if you prefer using two spaces for line breaks in Markdown, escape
#   spaces with a backslash: \SPACE SPACE. Simply adding two spaces prior to
#   using \n will only output a single space with `printf`.
