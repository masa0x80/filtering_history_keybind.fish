function __filtering_history
  commandline | read -l buffer
  if not set -q HISTORY_FILTER
    if type -qa fzf
      set -U HISTORY_FILTER 'fzf --no-sort --query'
    else if type -qa peco
      set -U HISTORY_FILTER 'peco --query'
    else if type -qa percol
      set -U HISTORY_FILTER 'percol --query'
    end
  end
  not set -q HISTORY_FILTER; and set -U HISTORY_FILTER 'fzf --no-sort --query'
  eval "history | $HISTORY_FILTER '$buffer'" | read -l command
  if test -n "$command"
    commandline $command
  end
  commandline -f repaint
end
