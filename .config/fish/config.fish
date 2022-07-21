if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx SHELL fish
set -gx EDITOR nvim

fish_add_path $HOME/.poetry/bin/

function fish_user_key_bindings
  bind \cf peco_change_directory
end

# Pyenv config
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

# manage dotfiles using git bare repository
# https://www.youtube.com/watch?v=tBoLDpTWVOM
alias config '/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
alias lg 'lazygit'

starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

