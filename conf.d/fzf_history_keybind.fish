function __register_filtering_history_keybind --on-event fish_prompt
  not set -q FILTERING_HISTORY_KEYBIND; and set -l FILTERING_HISTORY_KEYBIND '\cr'
  eval bind $FILTERING_HISTORY_KEYBIND __filtering_history
  functions -e __register_filtering_history_keybind
end
