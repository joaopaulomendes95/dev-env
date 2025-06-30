# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="robbyrussell"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# basic programs envs
export EDITOR="nvim"
export TERMINAL="foot"
export BROWSER="brave"

# basic path envs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# basic dev path envs
export PERSONAL=$XDG_CONFIG_HOME/personal
export DEV_ENV=$XDG_CONFIG_HOME/dev
export DEV_ENV_HOME=$HOME/personal/dev

# export paths
export PATH=$PATH:$HOME/.local/bin

# tmux-sessionizer ctrl+f
bindkey -s ^f "tmux-sessionizer\n"

# Starting Wayland
if uwsm check may-start; then
	exec uwsm start hyprland.desktop
fi
