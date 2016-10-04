functions -e __filtering_history
bind | command grep __filtering_history | command cut -d ' ' -f 2 | read -l FILTERING_HISTORY_KEYBIND
eval bind -e $FILTERING_HISTORY_KEYBIND
