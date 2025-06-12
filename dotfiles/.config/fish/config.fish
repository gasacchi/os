alias ls="eza"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
alias cat="bat"
alias dotfiles="cd ~/Dotfiles"
alias dev="cd ~/Dev"
alias package="e ~/Dotfiles/packages.md"
alias e="hx"

set -U fish_greeting
set -Ux LS_COLORS $(vivid generate gruvbox-dark-hard)
set -Ux BAT_THEME CatppuccinGscMod
set -Ux EDITOR hx
# set -Ux HELIX_RUNTIME ~/.config/helix/runtime

# fcitx5
# set -Ux GTK_IM_MODULE fcitx
set -Ux QT_IM_MODULE fcitx
set -Ux SDL_IM_MODULE fcitx
set -Ux GLFW_IM_MODULE ibus
set -Ux XMODIFIERS @im=fcitx


# path
set -U fish_user_paths ~/.local/bin $fish_user_paths
# set -U fish_user_paths ~/.odin/bin $fish_user_paths

# install theme
# fish_config theme save "CatppuccinGscMod"

theme_gruvbox dark
