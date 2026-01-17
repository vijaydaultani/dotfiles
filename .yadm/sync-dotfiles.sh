#!/bin/bash
# Auto-sync dotfiles to remote repository
# Runs monthly via cron

LOG_FILE="$HOME/.yadm/sync.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

log() {
    echo "[$DATE] $1" >> "$LOG_FILE"
}

log "Starting dotfiles sync..."

# Check if there are any changes
if yadm status --porcelain | grep -q .; then
    log "Changes detected, committing..."

    # Add all tracked file changes
    yadm add -u

    # Commit with timestamp
    yadm commit -m "Auto-sync dotfiles - $(date '+%Y-%m-%d')"

    # Push to remote
    if yadm push; then
        log "Successfully pushed changes to remote"
    else
        log "ERROR: Failed to push changes"
    fi
else
    log "No changes detected"
fi

log "Sync complete"
