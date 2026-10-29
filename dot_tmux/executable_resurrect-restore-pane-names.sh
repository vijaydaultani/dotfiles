#!/bin/sh
# tmux-resurrect post-restore-all hook.
# Re-applies the @pane_name values saved by resurrect-save-pane-names.sh,
# after resurrect has recreated all panes (so the target indices exist).
saved="$HOME/.tmux/resurrect/pane_names.tmux"
[ -f "$saved" ] && tmux source-file "$saved"
