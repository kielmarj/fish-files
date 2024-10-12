#!/usr/bin/env fish

#╭━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╮
#┆ FILE: ~/.config/fish/functions/fish_greeting.fish                           ┆
#┆ ABOUT: A few simple fish greetings to choose from.                          ┆
#┆ USAGE: Uncomment desired greeting.                                          ┆
#┆ REPO: https://github.com/NaturalBornCyborg/dot_dot_dots                     ┆
#┆ © 2024 NaturalBornCyborg <naturalborncyborg@proton.me>, GPL-3.0             ┆
#╰━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━◦○◦━╯

status is-interactive || exit

# ────────────────────────────────────────────────────────────────────────
#  Greeting1: Painfully configured fastfetch I now feel obligated to use.
#  Colored to match current theme.
# ────────────────────────────────────────────────────────────────────────
# function fish_greeting
#     echo ""
#     fastfetch
# end

# ─────────────────────────────────────────
#  Greeting2: Welcome message + date/time.
#  Colored to match current theme.
# ─────────────────────────────────────────
function fish_greeting
    printf "\e[94mWelcome to \e[96m$(cat /etc/hostname).\e[0m"
    echo
    printf "\e[92mIt is \e[95m$(date +%c).\e[0m"
    echo ""
end

# ──────────────────────────────────────────────────
#  Greeting3: The only greeting anyone really needs.
# ──────────────────────────────────────────────────
# function fish_greeting
#     fortune | cowsay | lolcat
# end

# ──────────────────────────────────────────────────────────────────────────────
#  Greeting4: All hail fish.
#  From: https://github.com/justinmayer/tackle/blob/master/functions/_logo.fish
# ──────────────────────────────────────────────────────────────────────────────
# function fish_greeting
#     echo '                 '(set_color F00)'___
#   ___======____='(set_color FF7F00)'-'(set_color FF0)'-'(set_color FF7F00)'-='(set_color F00)')
# /T            \_'(set_color FF0)'--='(set_color FF7F00)'=='(set_color F00)')
# [ \ '(set_color FF7F00)'('(set_color FF0)'0'(set_color FF7F00)')   '(set_color F00)'\~    \_'(set_color FF0)'-='(set_color FF7F00)'='(set_color F00)')
#  \      / )J'(set_color FF7F00)'~~    \\'(set_color FF0)'-='(set_color F00)')
#   \\\\___/  )JJ'(set_color FF7F00)'~'(set_color FF0)'~~   '(set_color F00)'\)
#    \_____/JJJ'(set_color FF7F00)'~~'(set_color FF0)'~~    '(set_color F00)'\\
#    '(set_color FF7F00)'/ '(set_color FF0)'\  '(set_color FF0)', \\'(set_color F00)'J'(set_color FF7F00)'~~~'(set_color FF0)'~~     '(set_color FF7F00)'\\
#   (-'(set_color FF0)'\)'(set_color F00)'\='(set_color FF7F00)'|'(set_color FF0)'\\\\\\'(set_color FF7F00)'~~'(set_color FF0)'~~       '(set_color FF7F00)'L_'(set_color FF0)'_
#   '(set_color FF7F00)'('(set_color F00)'\\'(set_color FF7F00)'\\)  ('(set_color FF0)'\\'(set_color FF7F00)'\\\)'(set_color F00)'_           '(set_color FF0)'\=='(set_color FF7F00)'__
#    '(set_color F00)'\V    '(set_color FF7F00)'\\\\'(set_color F00)'\) =='(set_color FF7F00)'=_____   '(set_color FF0)'\\\\\\\\'(set_color FF7F00)'\\\\
#           '(set_color F00)'\V)     \_) '(set_color FF7F00)'\\\\'(set_color FF0)'\\\\JJ\\'(set_color FF7F00)'J\)
#                       '(set_color F00)'/'(set_color FF7F00)'J'(set_color FF0)'\\'(set_color FF7F00)'J'(set_color F00)'T\\'(set_color FF7F00)'JJJ'(set_color F00)'J)
#                       (J'(set_color FF7F00)'JJ'(set_color F00)'| \UUU)
#                        (UU)'(set_color normal)
# end

