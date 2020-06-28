function __filtering_history
    type fzf >/dev/null || return 1

    commandline | read -l buffer
    set -q FILTERING_HISTORY_QUERY_OPTION || set -l FILTERING_HISTORY_QUERY_OPTION '--query'
    history | fzf $FILTERING_HISTORY_QUERY_OPTION $buffer | read -l command
    if test -n "$command"
        commandline $command
    end
    commandline -f repaint
end
