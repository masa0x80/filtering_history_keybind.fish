function __filtering_history
  commandline | read -l buffer
  history | angler "$ANGLER_QUERY_OPTION '$buffer'" | read -l command
  if test -n "$command"
    commandline $command
  end
  commandline -f repaint
end
