#!/bin/sh
# tmux-resurrect post-save-all hook.
# Dumps every pane that has a non-empty @pane_name as a re-runnable
# `set-option` command, keyed by session:window.pane_index (which resurrect
# restores with stable indices). resurrect itself does NOT persist custom
# @-user-options, so this is what makes pane names survive a server restart.
out="$HOME/.tmux/resurrect/pane_names.tmux"
mkdir -p "$(dirname "$out")"
tmux list-panes -a -F '#{?@pane_name,set-option -t "#{session_name}:#{window_index}.#{pane_index}" -p @pane_name "#{q:@pane_name}",}' \
  | grep . > "$out"
