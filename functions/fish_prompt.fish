status is-interactive || exit

# Prints the full path of the current directory
set -g fish_prompt_pwd_dir_length 0

#  ────────────────────────────────────────────────────────────────
#   Prompt1: ┌─󰮯󰊠󰊠󰊠─(CWD)
#            └TIME─>>>
#   (if fish_is_root_user, prompt will only display '# ')
#  ────────────────────────────────────────────────────────────────
# function fish_prompt
#     echo
#     printf "\e[93m┌─\e[91m󰮯\e[93m\e[92m󰊠\e[93m\e[94m󰊠\e[93m\e[95m󰊠\e[93m─\e[96m($(prompt_pwd))\e[0m"
#     if fish_is_root_user
#         printf "\e[96m# \e[0m"
#     end
#     echo
#     printf "\e[93m└\e[94m$(date +%I:%M:%S%P)\e[93m─\e[96m❯\e[95m❯\e[94m❯ \e[0m"
# end

#  ────────────────────────────────────────────────────────────────
#   Prompt2: USER@HOSTNAME CWD >>>
#   (if fish_is_root_user, prompt will only display '# ')
#  ────────────────────────────────────────────────────────────────
function fish_prompt
    echo
    if fish_is_root_user
        printf "\e[95m# \e[0m"
    else
        printf "\e[95m$USER\e[92m@\e[93m$(prompt_hostname) \e[94m$(prompt_pwd) \e[0m"
        printf "\e[96m❯\e[95m❯\e[94m❯ \e[0m"
    end
end
