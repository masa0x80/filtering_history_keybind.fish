functions -e __fzf_history
bind | command grep __fzf_history | command cut -d ' ' -f 2 | read -l FZF_HISTORY_KEYBIND
eval bind -e $FZF_HISTORY_KEYBIND
