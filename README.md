This repository is to be able to manage dot files from different applications using chezmoi

## Prepare the enviornemnt of the tools before using chezmoi

* Install ohmyzsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

* Login from a zsh shell (Source ~/.bash_profile to exec zsh process)
```
source ~/.bash_profile
```

* Install Vundle plugin manager for vim (From Inside the vim install all plugins using :PluginInstall command)
```
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
```

* Install Antigen plugin manager for zsh (When one reloads the configuraiton file it should automatically install all the plugins)
```
curl -L git.io/antigen > $ZSH_CUSTOM/antigen.zsh
```

* Install zsh-autosuggestion
```
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $HOME/.oh-my-zsh/custom/plugins/zsh-autocomplete
```

* Install TPM plugin manager for tmux
```
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
```

* Install chezmoi run this from $HOME/local which should install chezmoi inside $HOME/local/bin which should be in path
```
sh -c "$(curl -fsLS git.io/chezmoi)"
```

## Tool specific settings
* Install Powerline for Tmux
```
git clone https://github.com/erikw/tmux-powerline.git $HOME/.tmux/plugins/tmux-powerline
```

## Setup Chezmoi

* Initialize chezmoi repo from github
```
 chezmoi init https://github.com/vijaydaultani/dotfiles.git
```

* Pull the changes from your repo and apply them in a single command
```
chezmoi update
```
