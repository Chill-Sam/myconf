#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Reload GTK theme
function reload_gtk_theme() {
  theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
  gsettings set org.gnome.desktop.interface gtk-theme ''
  sleep 1
  gsettings set org.gnome.desktop.interface gtk-theme $theme
}

# Aliases
alias nf='neofetch'
alias ins='sudo pacman -S'
alias code='cd ~/Documents/Code'
alias wp='feh --bg-tile ~/Downloads/picture.png'
alias arch='figlet Arch Linux'
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

# Prompt
PS1="\e[0;31m\w -> \e[m"

# Environmental Variables
export EDITOR=/usr/bin/nvim

. "$HOME/.cargo/env"
