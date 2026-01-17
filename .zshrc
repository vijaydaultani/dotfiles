# Enable Powerlevel10k instant prompt. Should stay close to the top of $HOME/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# HOME of other non standard packages
export J2SDKDIR="$HOME/local/lib/jdk-9.0.4"
export J2REDIR="$HOME/local/lib/jdk-9.0.4/jre"
export JAVA_HOME="$HOME/local/lib/jdk-9.0.4"
export DERBY_HOME="$HOME/local/lib/jdk-9.0.4/db"
export ANT_HOME="$HOME/local/source/ant"
export MAVEN_HOME="$HOME/local/source/apache-maven-3.8.1"
export VIMINIT="source $HOME/.vimrc"
export RUBY_HOME="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin"
export KAGGLE_CONFIG_DIR="$HOME/.kaggle/kaggle.json"

# Expand path variable
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/local/bin:$PATH"
export PATH="${ANT_HOME}/bin:$PATH"
export PATH="${MAVEN_HOME}/bin:$PATH"
export PATH="${JAVA_HOME}/bin:$PATH"
export PATH="${RUBY_HOME}:$PATH"
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"
# commented out by conda initialize
# export PATH="$HOME/local/opt/anaconda2/bin:$PATH"
# export PATH="$HOME/local/source/opt/anaconda3/bin:$PATH"  
#export PATH="$HOME/.pyenv/versions/2.7.18/bin:$PATH"

# Expand library path
export LD_LIBRARY_PATH="$HOME/local/lib:$LD_LIBRARY_PATH"

# Theme to load, you can find different themes below
# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="awesome-patched"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$ZSH/custom"

# Load Antigen as a plugin manager for zsh
[[ -f $ZSH_CUSTOM/antigen.bundles ]] && \
    source $ZSH_CUSTOM/antigen.bundles

# Manually loading autojump since it is not available in antigen
#[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && \
#    source $HOME/.autojump/etc/profile.d/autojump.sh
#autoload -U compinit && compinit -u

# Add zsh autocomplete
# source $HOME/.oh-my-zsh/custom/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh


# Load plugins directly from the plugin manager of zsh
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Use Tab to accept autosuggestions
bindkey '\t' autosuggest-accept

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Load the aliases
[[ -f $HOME/.aliases/global.aliases ]] && \
    source $HOME/.aliases/global.aliases
[[ -f $HOME/.aliases/local.aliases ]] && \
    source $HOME/.aliases/local.aliases

# To customize prompt, run `p10k configure` or edit $HOME/.p10k.zsh.
[[ -f $HOME/.p10k.zsh ]] &&  source $HOME/.p10k.zsh
export PATH="$HOME/.local/bin:$PATH"

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
export MAMBA_EXE='/Users/vijaydaultani/.local/bin/micromamba';
export MAMBA_ROOT_PREFIX='/Users/vijaydaultani/.local/share/mamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from micromamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/vijaydaultani/.lmstudio/bin"
# End of LM Studio CLI section

