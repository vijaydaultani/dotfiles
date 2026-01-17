# Dotfiles

Personal dotfiles managed with [YADM](https://yadm.io/) (Yet Another Dotfiles Manager).

## What's Included

- `.zshrc` - Zsh configuration
- `.bash_profile` - Bash configuration
- `.vimrc` - Vim configuration
- `.tmux.conf` - Tmux configuration
- `.slate` - Slate window manager configuration
- `.p10k.zsh` - Powerlevel10k theme configuration
- `.aliases/` - Custom shell aliases
- `.config/karabiner/` - Karabiner Elements configuration
- `.vim/` - Vim plugins and bundles
- `.oh-my-zsh/custom/` - Oh My Zsh customizations
- `Brewfile` - Homebrew dependencies

## Installation on a New Machine

### 1. Install YADM

```bash
brew install yadm
```

### 2. Clone the Dotfiles

```bash
yadm clone https://github.com/vijaydaultani/dotfiles.git
```

This will clone the repo and automatically place all dotfiles in their correct locations in your home directory.

### 3. Install Dependencies (Optional)

```bash
brew bundle --file=~/Brewfile
```

## Pushing Changes to Remote

### Check Status

```bash
yadm status
```

### View Changes

```bash
yadm diff
```

### Add and Commit Changes

```bash
# Add specific file
yadm add ~/.zshrc

# Or add all changed files
yadm add -u

# Commit
yadm commit -m "Description of changes"
```

### Push to Remote

```bash
yadm push
```

## Common Commands

| Command | Description |
|---------|-------------|
| `yadm status` | Show changed files |
| `yadm diff` | Show file differences |
| `yadm add <file>` | Stage a file |
| `yadm commit -m "msg"` | Commit staged changes |
| `yadm push` | Push to remote |
| `yadm pull` | Pull from remote |
| `yadm list -a` | List all tracked files |

## Adding New Dotfiles

```bash
yadm add ~/.newconfig
yadm commit -m "Add newconfig"
yadm push
```

## Auto-Sync (Monthly Cron Job)

A cron job runs on the 1st of each month at 10:00 AM to automatically commit and push any dotfile changes.

- **Script:** `~/.yadm/sync-dotfiles.sh`
- **Log file:** `~/.yadm/sync.log`

### Setup on a New Machine

```bash
# Add the cron job
(crontab -l 2>/dev/null; echo "# Sync dotfiles monthly"; echo "0 10 1 * * ~/.yadm/sync-dotfiles.sh") | crontab -

# Verify
crontab -l
```

### Manual Sync

```bash
~/.yadm/sync-dotfiles.sh
```

## License

MIT
