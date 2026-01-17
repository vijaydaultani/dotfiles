#!/bin/bash
# export SHELL=$(`which zsh`)
export SHELL='/usr/bin/zsh'
exec $SHELL -l
# Update all the dotfiles everytime you login the system
# So that your version is never out of sync from server
# chezmoi update
. "$HOME/.cargo/eng"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/vijaydaultani/.lmstudio/bin"
# End of LM Studio CLI section

