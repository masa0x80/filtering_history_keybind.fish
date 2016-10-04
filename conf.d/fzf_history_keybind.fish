function __register_fzf_history_keybind --on-event fish_prompt
  not set -q FZF_HISTORY_KEYBIND; and set -l FZF_HISTORY_KEYBIND '\cr'
  eval bind $FZF_HISTORY_KEYBIND __fzf_history
  functions -e __register_fzf_history_keybind
end
